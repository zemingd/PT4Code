package main

import (
	"fmt"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func main() {
	var n int
	fmt.Scanln(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	gcd_l := make([]int, n)
	gcd_r := make([]int, n)
	gcd_l[0] = a[0]
	for i := 1; i < n; i++ {
		gcd_l[i] = gcd(gcd_l[i-1], a[i])
	}
	gcd_r[n-1] = a[n-1]
	for i := n - 2; i >= 0; i-- {
		gcd_r[i] = gcd(gcd_r[i+1], a[i])
	}
	ans := max(gcd_l[n-2], gcd_r[1])
	for i := 1; i < n-1; i++ {
		g := gcd(gcd_l[i-1], gcd_r[i+1])
		if g > ans {
			ans = g
		}
	}
	fmt.Println(ans)
}
