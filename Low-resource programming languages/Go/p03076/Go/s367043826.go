package main

import (
	"fmt"
	"sort"
)

func main() {
	ss := ScanNums(5)
	os := make([]int, 0, 5)

	var t int

	for _, v := range ss {
		if v%10 == 0 {
			t += v
		} else {
			os = append(os, 10-v%10)
			t += v + (10 - v%10)
		}
	}

	if len(os) == 0 {
		fmt.Println(t)
		return
	} else {
		sort.Sort(sort.IntSlice(os))
		t -= os[len(os)-1]
	}

	fmt.Println(t)
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
