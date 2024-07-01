package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	as := scanNums(n)

	x := 1
	cnt := 0
	for i := 0; i < n; i++ {
		if as[i] == x {
			x++
			continue
		}
		cnt++
	}
	if cnt == n {
		fmt.Println(-1)
		return
	}
	fmt.Println(cnt)
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

