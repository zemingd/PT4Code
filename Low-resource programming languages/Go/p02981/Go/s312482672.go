package main

import "fmt"

func solve(n, a, b int) int {
	tr := a * n
	tx := b
	if tr < tx {
		return tr
	} else {
		return tx
	}
}

func main() {
	var n, a, b int
	fmt.Scan(&n)
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Println(solve(n, a, b))
}