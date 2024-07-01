package main

import (
	"fmt"
)

func main() {
	var s, w int
	fmt.Scanf("%d %d", &s, &w)
	if s <= w {
		fmt.Printf("unsafe\n")
	} else {
		fmt.Printf("safe\n")
	}
}
