package main

import (
	"fmt"
)

func main() {
	n := 0
	fmt.Scan(&n)
	arr := make([]int, n)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	min := -1
	cnt := 0
	for _, v := range arr {
		if min == -1 {
			min = v
			cnt++
			continue
		}
		if min < v {
			continue
		}
		min = v
		cnt++
		continue
	}
	fmt.Println(cnt)
}
