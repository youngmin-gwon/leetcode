class Solution {
  String mostCommonWord(String paragraph, List<String> banned) {
      final regex = RegExp(r"[^\w]");
      final convertedParagraph = paragraph.replaceAll(regex, " ").toLowerCase();

      final words = convertedParagraph.split(" ");

      words.removeWhere(
        (word) {
          final bannedWords = [""]..addAll(banned);
          return bannedWords.contains(word);
        },
      );

      final counts = <String, int>{};
      for (final word in words) {
        if (counts[word] == null) {
          counts[word] = 1;
          continue;
        }
        counts[word] = counts[word]! + 1;
      }

      return (counts.entries
          .reduce((previous, next) =>
              previous = previous.value < next.value ? next : previous)
          .key);
  }
}
