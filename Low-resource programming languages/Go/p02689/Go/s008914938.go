package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	h := make([]int, n, n)
	a := make([]int, m, m)
	b := make([]int, m, m)
	f := make([]bool, n, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}
	for i := 0; i < m; i++ {
		fmt.Scan(&a[i], &b[i])
		a[i]--
		b[i]--
	}

	number := 0
	for i := 0; i < n; i++ {
		if f[i] {
			continue
		}
		if isGood(m, i, h, a, b, f) {
			number++
		}
	}
	fmt.Println(f)
	fmt.Println(number)

}

func isGood(m, at int, h, a, b []int, f []bool) bool {
	for i := 0; i < m; i++ {
		if a[i] == at {
			if h[b[i]] >= h[at] {
				return false
			}
			f[b[i]] = true
		} else if b[i] == at {
			if h[a[i]] >= h[at] {
				return false
			}
			f[a[i]] = true
		}
	}
	return true
}