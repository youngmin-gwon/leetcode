class Solution {
  List<String> reorderLogFiles(List<String> logs) {

    final letters = <String>[];
    final digits = <String>[];

    for (final log in logs) {
      final identifier = log.split(' ')[1];
      if (int.tryParse(identifier) != null) {
        digits.add(log);
      } else {
        if (BigInt.tryParse(identifier) != null) {
          digits.add(log);
        } else {
          letters.add(log);
        }
      }
    }

    letters.sort((prev, latter) {
      final prevs = prev.split(' ');
      final latters = latter.split(' ');

      final condition1 = prevs.sublist(1).join(' ').compareTo(
            latters.sublist(1).join(' '),
          );

      if (condition1 != 0) {
        return condition1;
      }

      return prevs[0].compareTo(latters[0]);
    });

    return letters + digits;
 
  }
}
