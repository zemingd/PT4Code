package main

import "fmt"

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func digits(x int64) int {
	s := 0
	for x > 0 {
		s++
		x /= 10
	}
	return s
}

func f(a, b int64) int {
	return max(digits(a), digits(b))
}

func main() {
	n := int64(0)
	fmt.Scan(&n)
	ans := 11
	for a := int64(1); a*a <= n; a++ {
		if n%a > 0 {
			continue
		}
		b := n / a
		ans = min(ans, f(a, b))
	}
	fmt.Println(ans)
}
