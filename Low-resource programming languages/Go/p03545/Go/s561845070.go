package main

import (
	"fmt"
	"strconv"
)

func main() {
	var ABCD string
	fmt.Scan(&ABCD)

	num, _ := strconv.Atoi(ABCD)

	var nums [4]int
	for i := 0; i < len(nums); i++ {
		nums[i] = num % 10
		num = num / 10
	}

	var ans int
	var bits int

	for bits = 0; bits < (1 << uint(3)); bits++ {
		ans = nums[0]
		for i := 0; i < 3; i++ {
			if ((bits >> uint(i)) & 1) == 1 {
				ans -= nums[i+1]
				continue
			}
			ans += nums[i+1]
		}
		if ans == 7 {
			break
		}
	}
	ops := ""
	for i := 0; i < 3; i++ {
		if ((bits >> uint(i)) & 1) == 1 {
			ops = ops + "-"
			continue
		}
		ops = ops + "+"
	}

	fmt.Printf("%d%s%d%s%d%s%d=7\n", nums[0], string(ops[0]), nums[1], string(ops[1]), nums[2], string(ops[2]), nums[3])
}
