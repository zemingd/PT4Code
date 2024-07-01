package main

import "fmt"

func gcd(a, b int) int {
	if b == 0 {
		return a
	} else {
		return gcd(b, a%b)
	}
}

func diff(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	xs := make([]int, n)
	for i := range xs {
		fmt.Scan(&xs[i])
	}

	ans := diff(xs[0], x)
	for _, v := range xs {
		ans = gcd(ans, diff(v, x))
	}
	fmt.Println(ans)
}
