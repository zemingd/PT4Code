package main

import "fmt"

func pow(a, b int) int {
	if b == 0 {
		return 1
	}
	return a * pow(a, b-1)
}

func main() {
	var D, N int
	fmt.Scan(&D, &N)

	fmt.Println(N * pow(100, D))
}
