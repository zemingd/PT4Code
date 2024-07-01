package main

import "fmt"

func max(a ...int) int {
	m := a[0]
	for i, v := range a {
		if i == 0 {
			continue
		}
		if m < v {
			m = v
		}
	}
	return m
}
func main() {
	// Code for B - Product Max
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)

	fmt.Println(max(a*c, a*d, b*c, b*d))
}
