package main

import (
	"fmt"
)

func main() {
	var X, N int
	fmt.Scan(&X, &N)
	if N == 0 {
		fmt.Println(X)
	} else {
		p_lis := make([]int, N)
		for i := 0; i < N; i++ {
			var p int
			fmt.Scan(&p)
			p_lis[i] = p
		}
		var l, h int
		for j := X; j > -1; j-- {
			if !contains(p_lis, j) {
				l = j
				break
			}
		}
		for j := X; j < 101; j++ {
			if !contains(p_lis, j) {
				h = j
				break
			}
		}
		diff_l := X - l
		diff_h := h - X
		if diff_l <= diff_h {
			fmt.Println(l)
		} else {
			fmt.Println(h)
		}
	}
}
func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}
