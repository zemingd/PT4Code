package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	D := map[int]bool{}

	for i := 0; i < n; i++ {
		var d int
		fmt.Scan(&d)
		D[d] = true
	}
	fmt.Print(len(D))
}
