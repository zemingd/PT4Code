package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	fmt.Println(solve(n))
	return
}

func solve(n int) int {
	return (1000 - n%1000) % 1000
}