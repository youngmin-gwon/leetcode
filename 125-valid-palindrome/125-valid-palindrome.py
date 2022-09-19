import re

class Solution:
    def isPalindrome(self, s: str)-> str:
        s = s.lower()
        s = re.sub(r"[^a-z0-9]","",s)
        return s==s[::-1]