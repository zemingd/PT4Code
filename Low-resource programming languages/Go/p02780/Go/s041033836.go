package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}

	s := make([]int, n+1)
	for i := 0; i < n; i++ {
		s[i+1] = s[i] + p[i]
	}

	mm, si := 0, 0
	for i := 0; i <= n-k; i++ {
		t := s[i+k] - s[i]
		if mm < t {
			mm, si = t, i
		}
	}

	ans := 0.0
	for i := si; i < si+k; i++ {
		ans += expectation(p[i])
	}

	fmt.Println(ans)
}

func expectation(p int) float64 {
	n := float64(p)
	s := 0.5 * n * (n + 1)
	return s / n
}
