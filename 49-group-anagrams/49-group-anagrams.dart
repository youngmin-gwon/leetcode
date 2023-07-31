class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    final Map<String, List<String>> maps = {};
    for (final str in strs) {
      final keyChunk = str.split('')..sort((a, b) => a.compareTo(b));
      final key = keyChunk.join('');
      if (maps[key] == null) {
        maps[key] = [str];
      } else {
        maps[key]!.add(str);
      }
    }

    return maps.values.toList();
  }
}

