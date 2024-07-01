package main

import "fmt"

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var p, q, r int
	fmt.Scan(&p, &q, &r)
	fmt.Println(min(p+q, min(q+r, r+p)))
}
