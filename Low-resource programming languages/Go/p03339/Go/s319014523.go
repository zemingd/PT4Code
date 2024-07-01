package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	sum := 0
	for i := 1; i < n; i++ {
		if s[i] == 'E' {
			sum++
		}
	}
	ans := sum
	for i := 1; i < n; i++ {
		if s[i-1] == 'W' {
			sum++
		}
		if s[i] == 'E' {
			sum--
		}
		if sum < ans {
			ans = sum
		}
	}
	fmt.Println(ans)
}
