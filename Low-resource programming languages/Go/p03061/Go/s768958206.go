package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	l, r := make([]int, n), make([]int, n)
	l[0] = a[0]
	r[n-1] = a[n-1]
	for i := 0; i < n-1; i++ {
		l[i+1] = gcd(l[i], a[i+1])
		r[n-1-i-1] = gcd(r[n-1-i], a[n-1-i-1])
	}

	ans := 0
	for i := 0; i < n; i++ {
		var g int
		if i == 0 {
			g = r[i+1]
		} else if i == n-1 {
			g = l[i-1]
		} else {
			g = gcd(l[i-1], r[i+1])
		}
		if ans < g {
			ans = g
		}
	}
	fmt.Println(ans)
}

func gcd(x, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}