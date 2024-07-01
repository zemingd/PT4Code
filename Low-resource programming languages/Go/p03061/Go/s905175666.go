package main

import "fmt"

func gcd(a, b int) int {
	if b > a {
		a, b = b, a
	}
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	L := make([]int, n+1)
	L[0] = 0
	for i := 0; i < n; i++ {
		L[i+1] = gcd(L[i], a[i])
	}
	R := make([]int, n+1)
	R[n] = 0
	for i := n; i > 0; i-- {
		R[i-1] = gcd(R[i], a[i-1])
	}
	ans := 1
	for i := 0; i < n; i++ {
		ans = max(ans, gcd(L[i], R[i+1]))
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}
