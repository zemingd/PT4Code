package main

import (
	"fmt"
)

func main() {
	var H, W int
	fmt.Scan(&H, &W)

	ans := func() int {
		if H == 1 || W == 1 {
			return 1
		}
		return (H*W + 1) / 2

	}()

	fmt.Println(ans)
}
