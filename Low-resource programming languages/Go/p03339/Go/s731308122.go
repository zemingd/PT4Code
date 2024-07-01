package main

import "fmt"

func main() {
	var (
		n int
		s string
	)
	fmt.Scan(&n, &s)

	cost := 0
	for i := 1; i < n; i++ {
		if s[i] == 'E' {
			cost++
		}
	}

	min := n
	for i := 1; i < n; i++ {
		if s[i] == 'E' {
			cost--
		}
		if s[i-1] == 'W' {
			cost++
		}
		if cost < min {
			min = cost
		}
	}
	fmt.Println(min)
}
