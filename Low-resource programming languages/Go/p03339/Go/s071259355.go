package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	w := make([]int, n)
	for i := 1; i < n; i++ {
		if s[i-1] == 'W' {
			w[i] = w[i-1] + 1
		} else {
			w[i] = w[i-1]
		}
	}
	e := make([]int, n)
	for i := n - 2; i >= 0; i-- {
		if s[i+1] == 'E' {
			e[i] = e[i+1] + 1
		} else {
			e[i] = e[i+1]
		}
	}

	var min int = 3 * 10e5
	for i := 0; i < n; i++ {
		if min > w[i]+e[i] {
			min = w[i] + e[i]
		}
	}
	fmt.Println(min)
}