package main

import "fmt"

func main() {
	var a, b, n int
	fmt.Scan(&a, &b, &n)

	i := min(b-1, n)
	fmt.Println(a*i/b - a*(i/b))
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}