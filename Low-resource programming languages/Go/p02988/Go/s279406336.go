package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}

	var c int
	for i := 1; i < n-1; i++ {
		if (p[i-1] < p[i] && p[i] < p[i+1]) || (p[i-1] > p[i] && p[i] > p[i+1]) {
			c++
		}
	}
	fmt.Println(c)
}
