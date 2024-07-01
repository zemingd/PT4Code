package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n)
	var A int
	for i := 0; i < n; i++ {
		fmt.Scan(&A)
		a[i] = A - 1
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}
	for i := 0; i < n-1; i++ {
		fmt.Scan(&c[i])
	}
	ans := 0
	for i := 0; i < n; i++ {
		ans += b[a[i]]
		if i > 0 {
			if a[i-1]+1 == a[i] {
				ans += c[a[i-1]]
				// log.Println("get c points", a[i-1], a[i], "bonus=", c[a[i-1]])
			}
		}
		// log.Println(b[a[i]], ans)
	}
	fmt.Println(ans)
}
