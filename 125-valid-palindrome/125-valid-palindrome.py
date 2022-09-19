class Solution:
    def isPalindrome(self, s: str)-> str:
        words = list(re.sub(r"[^\w]*[_]*","", s).lower())
        while len(words)>1:
            if (words.pop()!=words.pop(0)):
                return False
        return True