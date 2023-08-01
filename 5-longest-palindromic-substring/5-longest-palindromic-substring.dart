
class Solution {
  String longestPalindrome(String s) {
    String expand(int left, int right) {
      while (0 <= left &&
          right <= s.length &&
          s.substring(left, left + 1) == s.substring(right - 1, right)) {
        left -= 1;
        right += 1;
      }

      return s.substring(left + 1, right - 1);
    }

    if (s.length < 2 || s == s.split('').reversed.join()) {
      return s;
    }

    String result = '';

    for (var i = 0; i < s.length; i++) {
      final val1 = expand(i, i + 1);
      final val2 = expand(i, i + 2);

      result =
          [result, val1, val2].reduce((a, b) => a.length > b.length ? a : b);
    }

    return result;
  }
}
