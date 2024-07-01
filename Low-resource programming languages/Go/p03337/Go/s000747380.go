package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Println(max(max(a+b, a-b), a*b))
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}