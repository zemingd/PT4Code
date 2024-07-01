package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	result := 0
	for k := 2; k < n; k++ {
		if check(s, 0, 1, k) {
			result++
		}
	}
	for j := 2; j+1 < n; j++ {
		if check(s, 0, j, n-1) {
			result++
		}
	}
	for j := 2; j+2 < n; j++ {
		if check(s, 0, j, j+1) {
			result++
		}
	}
	for i := 1; i+2 < n; i++ {
		if check(s, i, n-2, n-1) {
			result++
		}
	}
	for i := 2; i+3 < n; i++ {
		if check(s, i, i+1, i+2) {
			result++
		}
	}
	fmt.Println(result)
}

func check(s string, i int, j int, k int) bool {
	//fmt.Println("check:", i, j, k)
	ret := s[i] != s[j] && s[i] != s[k] && s[j] != s[k] && j-i != k-j
	return ret
}
