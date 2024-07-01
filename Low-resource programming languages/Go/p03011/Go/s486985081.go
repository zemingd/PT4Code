package main

import "fmt"

func min(a ...int) int {
	m := a[0]
	for i, v := range a {
		if i == 0 {
			continue
		}
		if m > v {
			m = v
		}
	}
	return m
}

func main() {
	// Code for A - Airplane
	var P, Q, R int
	fmt.Scan(&P, &Q, &R)

	fmt.Println(min(P+Q, Q+R, R+P))
}
