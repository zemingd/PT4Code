package main

import "fmt"

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	ans := max(a+b, max(a-b, a*b))
	fmt.Println(ans)
}
