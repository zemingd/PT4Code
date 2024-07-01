package main

import (
	"fmt"
)

func main() {
	var N, r int
	fmt.Scan(&N)
	arr := make([]int, N)
	var wa [][]int
	for i := 0; i < N; i++ {
		fmt.Scan(&arr[i])
	}
	wa = sliceSplit(arr, 0)
	for len(wa) > 0 {
		v := wa[0]
		wa = wa[0+1:]
		for i := 0; i < len(v); i++ {
			v[i]--
		}
		wa = append(wa, sliceSplit(v, 0)...)
		r++
	}
	fmt.Println(r)

}

func sliceSplit(arr []int, s int) [][]int {
	var warr []int
	var rarr [][]int
	for i := 0; i < len(arr); i++ {
		if arr[i] == s {
			if len(warr) > 0 {
				rarr = append(rarr, warr)
				warr = []int{}
			}
		} else {
			warr = append(warr, arr[i])
		}
	}
	if len(warr) > 0 {
		rarr = append(rarr, warr)
	}
	return rarr
}