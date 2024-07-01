package main

import (
	"fmt"
)

func main() {
	var H, W int64
	fmt.Scanf("%d %d", &H, &W)
	fmt.Printf("%d\n", (H*W+1)/2)
}
