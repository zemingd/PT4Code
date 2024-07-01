package main

import (
	"fmt"
	"math"
)

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func solve(a, b string) int {
	res := 0
	for i := 0; i < len(a); i++ {
		if a[i] == 'W' {
			res++
		}
	}
	for i := 0; i < len(b); i++ {
		if b[i] == 'E' {
			res++
		}
	}
	return res
}

func main() {
	var i int
	var s string
	fmt.Scanf("%d", &i)
	fmt.Scanf("%s", &s)
	n := math.MaxInt64
	for i := 0; i < len(s); i++ {
		n = min(n, solve(s[0:i], s[i+1:]))
	}
	fmt.Println(n)
}