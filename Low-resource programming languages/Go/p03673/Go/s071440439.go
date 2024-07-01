package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	b := make([]int, n)
	c := 0
	for i := 0; i < n; i++ {
		if i%2 == 0 {
			b[c] = a[n-i-1]
		} else {
			b[n-c-1] = a[n-i-1]
			c++
		}
	}

	for k, v := range b {
		suffix := " "
		if k == n-1 {
			suffix = "\n"
		}
		fmt.Printf("%d%s", v, suffix)
	}
}
