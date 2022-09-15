class Solution {
  bool isPalindrome(String s) {
    final regex = RegExp(r"[a-zA-Z0-9]");
    final chars = Queue<String>();

    for (var i = 0; i < s.length; i++) {
      if (regex.hasMatch(s[i])) {
        chars.add(s[i].toLowerCase());
      }
    }

    while (chars.length > 1) {
      if (chars.removeLast() != chars.removeFirst()) {
        return false;
      }
    }

    return true;
  }
}
