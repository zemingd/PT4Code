package main

import (
	"fmt"
	"math"
)

func main() {
	var s []byte
	fmt.Scan(&s)


	cnt := 0
	for i := 0; i < len(s); i++ {
		if i % 2 == 0 && s[i] == '0' {
			cnt++
		}
		if i % 2 == 1 && s[i] == '1' {
			cnt++
		}
	}
	cnt2 := 0

	for i := 0; i < len(s); i++ {
		if i % 2 == 0 && s[i] == '1' {
			cnt2++
		}
		if i % 2 == 1 && s[i] == '0' {
			cnt2++
		}
	}
	fmt.Println(min(cnt, cnt2))
}
func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}
