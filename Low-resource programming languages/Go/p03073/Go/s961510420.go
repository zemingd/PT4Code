package main

import (
	"fmt"
	"math"
)

func main() {
	var s []byte
	fmt.Scan(&s)


	stmp := make([]byte, len(s))
	_ = copy(stmp,s)
	cnt := 0
	for i := 1; i < len(stmp); i++ {
		if stmp[i] == stmp[i-1] {
			if stmp[i] == '1' {
				stmp[i] = '0'
				cnt++
				continue
			}
			if stmp[i] == '0' {
				stmp[i] = '1'
				cnt++
				continue
			}
		}
	}

	if s[0] == '1' {
		s[0] = '0'
	}  else {
		s[0] = '1'
	}
	cnt2 := 1

	for i := 1; i < len(s); i++ {
		if s[i] == s[i-1] {
			if s[i] == '1' {
				s[i] = '0'
				cnt2++
				continue
			}
			if s[i] == '0' {
				s[i] = '1'
				cnt2++
				continue
			}
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
