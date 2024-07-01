package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)
	train := n * a
	if train < b {
		fmt.Println(train)
		return
	}
	fmt.Println(b)
}