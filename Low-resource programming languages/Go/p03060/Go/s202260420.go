package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanln(&n)
	v := make([]int, n)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
	}

	ans := 0
	for i := 0; i < n; i++ {
		diff := v[i] - c[i]
		if diff > 0 {
			ans += diff
		}
	}
	fmt.Println(ans)
}
