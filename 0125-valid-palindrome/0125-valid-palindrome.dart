class Solution {
  bool isPalindrome(String s) {
    final lowered = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

    if (lowered.length <= 1) {
      return true;
    }

    int left = 0;
    int right = lowered.length - 1;
    while (lowered[left] == lowered[right]) {
      if (left + 1 == right) {
        return true;
      }

      left++;
      right--;

      if (left == right) {
        return true;
      }
    }
    return false;
  }
}
