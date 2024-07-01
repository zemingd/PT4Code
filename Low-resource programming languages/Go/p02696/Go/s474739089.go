package main

import "fmt"

func main() {
	var a, b, n int
	fmt.Scan(&a, &b, &n)

	fmt.Println(a*(b-1)/b-a*(b-1)/b, a*n/b-a*(n/b))
	ans := max(a*(b-1)/b-a*(b-1)/b, a*n/b-a*(n/b))
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}