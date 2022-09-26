class Solution(object):
    def productExceptSelf(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        out=[]
        p=1
        for i in range(len(nums)):
            out.append(p)
            p=p*nums[i]

        p=1
        for i in range(len(nums)-1,-1,-1):
            out[i]=out[i]*p
            p=p*nums[i]

        return out
        