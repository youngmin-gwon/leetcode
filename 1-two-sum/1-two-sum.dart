class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var map = <int, int>{};
    for (var i = 0; i < nums.length; i++) {
      if (map.containsKey(target - nums[i])) {
        return [map[target - nums[i]]!, i];
      } else {
        map[nums[i]] = i;
      }
    }
    return [];
  }
}
