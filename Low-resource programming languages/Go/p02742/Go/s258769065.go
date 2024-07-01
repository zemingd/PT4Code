package main

import "fmt"

func main() {
	var H, W int
	fmt.Scan(&H, &W)

	if H == 1 || W == 1 {
		fmt.Println(1)
	}

	if (H*W) % 2 == 1 {
		fmt.Println(H*W/2+1)
	} else {
		fmt.Println(H*W/2)
	}
}
