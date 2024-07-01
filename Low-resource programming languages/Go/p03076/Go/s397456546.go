package main

import (
	"fmt"
	"sort"
)

func main() {
	ss := ScanNums(5)
	os := make([]int, 0, 5)
	m := map[int]int{}

	var t int

	for idx, v := range ss {
		if v%10 == 0 {
			t += v
		} else {
			os = append(os, 10-v%10)
			m[10-v%10] = idx
		}
	}

	if len(os) == 0 {
		fmt.Println(t)
		return
	}
	if len(os) == 1 {
		t += ss[m[os[0]]]
		fmt.Println(t)
		return
	}

	sort.Sort(sort.IntSlice(os))
	for idx, item := range os {
		if idx == len(os)-1 {
			t += ss[m[item]]
		} else {
			t += ss[m[item]] + item
		}
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
