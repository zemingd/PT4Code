package main

import (
	"fmt"
)

func B(n int, s string) int {
	r := 0
	for i := 0; i < n-2; i++ {
		if s[i:i+3] == "ABC" {
			i += 2
			r++
		}
	}
	return r
}

func main() {
	var n int
	var s string
	// fmt.Scanf("%d %d", &k, &x)
	fmt.Scanf("%d", &n)
	fmt.Scanf("%s", &s)
	r := B(n, s)
	fmt.Printf("%d\n", r)
}
