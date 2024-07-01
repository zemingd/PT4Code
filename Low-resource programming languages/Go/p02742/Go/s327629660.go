package main

import (
	"fmt"
)

func main() {
	var H, W int
	fmt.Scan(&H, &W)
	if (H*W)%2 == 0 {
		fmt.Println(H * W / 2)
	} else {
		fmt.Println(H*W/2 + 1)
	}
}
