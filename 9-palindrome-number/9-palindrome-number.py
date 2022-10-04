class Solution:
    def isPalindrome(self, x: int) -> bool:
        value = str(x)
        return value == value[::-1]