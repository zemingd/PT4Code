package main

import (
	"fmt"
	"strconv"
	"strings"
)

func solution(a, b int) int {
	ab := make([]int, b)
	ba := make([]int, a)

	// aをb回
	for i := 0; i < b; i++ {
		ab[i] = a
	}
	// bをa回
	for i := 0; i < a; i++ {
		ba[i] = b
	}

	if ab[0] < ba[0] {
		return ints2int(ab)
	}
	return ints2int(ba)
}

func ints2int(nums []int) int {
	strs := make([]string, len(nums))

	for i := range nums {
		strs[i] = strconv.Itoa(nums[i])
	}
	ans, _ := strconv.Atoi(strings.Join(strs, ""))
	return ans
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Println(solution(a, b))
}
