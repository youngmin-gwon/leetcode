class Solution {
    fun isPalindrome(s:String) : Boolean {
        val s = s.lowercase().filter { it.isLetterOrDigit() }
        var left = 0
        var right = s.length - 1

        while (left < right) {
            if (s[left] != s[right]) {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}
