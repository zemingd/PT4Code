package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)
	nums := make([]int, len(n))
	for i := 0; i < len(n); i++ {
		nums[i], _ = strconv.Atoi(string(n[i]))
	}
	for bits := 0; bits < (1 << uint64(3)); bits++ {
		res := nums[0]
		resStr := strconv.Itoa(nums[0])
		resNums := nums[1:]
		for i := 0; i < 3; i++ {
			if bits>>uint64(i)&1 == 1 {
				res += resNums[i]
				resStr += "+"
				resStr += strconv.Itoa(resNums[i])
			} else {
				res -= resNums[i]
				resStr += "-"
				resStr += strconv.Itoa(resNums[i])
			}
		}
		if res == 7 {
			resStr += "=7"
			fmt.Println(resStr)
			return
		}
	}
}
