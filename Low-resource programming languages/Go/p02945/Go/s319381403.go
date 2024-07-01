package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	fmt.Println(Max(Max(A+B, A-B), A*B))
}
func Max(a, b int) int {
	if b > a {
		return b
	}
	return a
}
