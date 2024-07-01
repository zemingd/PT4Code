package main

import "fmt"

func ZArray(s string) []int {
	n := len(s)
	z := make([]int, n)
	var l, r, k int
	for i := 0; i < len(s); i++ {
		if i > r {
			l = i
			r = i
			for r < n && s[r-l] == s[r] {
				r++
			}
			z[i] = r - l
			r--
		} else {
			k = i - l
			if z[k] < r-i+1 {
				z[i] = z[k]
			} else {
				l = i
				for r < n && s[r-l] == s[r] {
					r++
				}
				z[i] = r - l
				r--
			}
		}
	}
	return z
}

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	var ans int
	for i := 0; i < n; i++ {
		z := ZArray(s[i:n])
		for j := 0; j < n-i; j++ {
			if z[j] > j {
				z[j] = j
			}
			if ans < z[j] {
				ans = z[j]
			}
		}
	}
	fmt.Println(ans)
}
