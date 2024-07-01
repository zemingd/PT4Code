package main

import (
	"fmt"
)

func gcd(a, b int) int {
	if a > b {
		a, b = b, a
	}
	if a == 0 {
		return b
	}
	return gcd(b%a, a)
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	ans := 1000000001
	for i := 0; i < len(a)-1; i++ {
		t := gcd(a[i], a[i+1])
		if t < ans {
			ans = t
		}
	}
	fmt.Println(ans)
}
