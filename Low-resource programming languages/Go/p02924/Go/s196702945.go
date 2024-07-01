package main

import "fmt"

func solve() {
	var n int
	fmt.Scan(&n)
	ans := n * (n - 1) / 2
	fmt.Println(ans)
}
