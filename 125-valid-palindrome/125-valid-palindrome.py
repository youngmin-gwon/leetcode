import collections

class Solution:
    def isPalindrome(self, s: str)-> str:
        strs=collections.deque()
        for char in s:
            if (char.isalnum()):
                strs.append(char.lower())

        while len(strs)>1:
            if (strs.pop()!=strs.popleft()):
                return False
        return True