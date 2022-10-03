# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverse_list(self, head:ListNode)->ListNode:
        node,prev=head,None

        while node:
            next,node.next=node.next,prev
            prev,node=node,next
        return prev

    def to_list(self,node:ListNode)->ListNode:
        results=[]
        while node:
            results.append(node.val)
            node=node.next
        return results

    def to_reversed_linked_list(self, result:list)->ListNode:
        prev:ListNode=None
        for r in result:
            node=ListNode(r)
            node.next=prev
            prev=node
        return node

    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        
        a=self.to_list(self.reverse_list(l1))
        b=self.to_list(self.reverse_list(l2))
        
        result_str=int("".join(str(e) for e in a)) + int("".join(str(e) for e in b))
        
        return self.to_reversed_linked_list(str(result_str))
                
            