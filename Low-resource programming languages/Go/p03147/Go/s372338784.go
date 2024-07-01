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
	var warr []int
	for i := 0; i < N; i++ {
		if arr[i] > 0 {
			warr = append(warr, arr[i])
			if i == N-1 {
				wa = append(wa, warr)
			}
		} else {
			wa = append(wa, warr)
			warr = []int{}
		}
	}
	for len(wa) > 0 {
		v := wa[0]
		var sarr []int
		wa = wa[0+1:]
		for i := 0; i < len(v); i++ {
			if v[i] > 1 {
				sarr = append(sarr, v[i]-1)
			} else {
				if len(sarr) > 0 {
					wa = append(wa, sarr)
					sarr = []int{}
				}
			}
		}
		if len(sarr) > 0 {
			wa = append(wa, sarr)
		}
		r++
	}
	fmt.Println(r)

}