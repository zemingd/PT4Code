package main

import "fmt"

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	ans := 0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			m := gcd(a[i], a[j])
			if ans < m {
				ans = m
			}
		}
	}

	fmt.Println(ans)
}
