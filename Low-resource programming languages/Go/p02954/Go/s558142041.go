package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	n := len(s)
	a := make([]int, n)
	li, ri := 0, 0
	for i := 0; i < n; i++ {
		lc := s[i]
		rc := s[n-i-1]
		if lc == 'L' {
			a[i] = li
			li++
		} else {
			li = 0
		}
		if rc == 'R' {
			a[n-i-1] = ri
			ri++
		} else {
			ri = 0
		}
	}

	ans := make([]int, n)
	for i := 0; i < n; i++ {
		b := a[i]
		if b%2 == 1 {
			b++
		}
		if s[i] == 'R' {
			ans[i+b]++
		} else {
			ans[i-b]++
		}
	}

	for i, v := range ans {
		if i < len(ans)-1 {
			fmt.Printf("%d ", v)
		} else {
			fmt.Println(v)
		}
	}
}
