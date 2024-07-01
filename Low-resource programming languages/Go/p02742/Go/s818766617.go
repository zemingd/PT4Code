package main

import "fmt"

func main() {
	var H, W int
	fmt.Scan(&H, &W)

	fmt.Println(exec(H, W))
}

func exec(H, W int) int {
	if H == 1 || W == 1 {
		return 1
	}

	return (H*W + 1) / 2
}
