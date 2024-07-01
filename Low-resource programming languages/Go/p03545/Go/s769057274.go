package main

import (
	"fmt"
	"strconv"
)

func main() {
	var ABCD string
	fmt.Scan(&ABCD)

	num := strconv.Atoi(ABCD)
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
			if ((bits >> i) & 1) == 1 {
				ans -= nums[i+1]
				continue
			}
			ans += nums[i+1]
		}
		if ans == 7 {
			break
		}
	}
	out := string(num[0])
	for i := 0; i < 3; i++ {
		if ((bits >> i) & 1) == 1 {
			out = out + "-" + nums[i+1]
			continue
		}
		out = out + "+" nums[i+1]
	}
	out = out + "=7"

	fmt.Println(out)
}
