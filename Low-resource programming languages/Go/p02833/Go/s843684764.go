package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	if n%2 != 0 {
		fmt.Println(0)
		return
	}

	cnt := 0
	for x := 10; x <= n; x *= 5 {
		cnt += n / x
	}
	fmt.Println(cnt)
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
