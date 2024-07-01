package main

import (
	"fmt"
)

func maxtime(x int) int {
	return (x + 9) / 10 * 10
}

func remtime(x int) int {
	return maxtime(x) - x
}

func max(nums ...int) int {
	max := nums[0]
	for _, v := range nums {
		if max < v {
			max = v
		}
	}
	return max
}

func main() {
	var a, b, c, d, e int
	fmt.Scan(&a, &b, &c, &d, &e)

	sum := maxtime(a) + maxtime(b) + maxtime(c) + maxtime(d) + maxtime(e)
	sum -= max(remtime(a), remtime(b), remtime(c), remtime(d), remtime(e))
	fmt.Println(sum)
}
