class Solution {
  String reverseStr(String s, int k) {
    List<String> chars = s.split('');
    int n = chars.length;

    for (int i = 0; i < n; i += 2 * k) {
      int left = i;
      int right = i + k - 1 < n ? i + k - 1 : n - 1;

      while (left < right) {
        String temp = chars[left];
        chars[left] = chars[right];
        chars[right] = temp;
        left++;
        right--;
      }
    }

    return chars.join('');
  }
}
