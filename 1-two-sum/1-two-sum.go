func twoSum(nums []int, target int) []int {
    numsMap := make(map[int]int)

	for i, num := range nums {
		numsMap[num] = i
	}

	for i, num := range nums {
		if j, ok := numsMap[target-num]; ok && i != j {
			return []int{i, j}

		}
	}
	return []int{}
}