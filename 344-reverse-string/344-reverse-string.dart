class Solution {
  void reverseString(List<String> s) {
    if (s.length <= 1) {
      return;
    }

    int left = 0;
    int right = s.length - 1;

    while (left <= right) {
      final tmp = s[left];
      s[left] = s[right];
      s[right] = tmp;

      left++;
      right--;

      if (left == right) {
        return;
      }
    }
  }
}
