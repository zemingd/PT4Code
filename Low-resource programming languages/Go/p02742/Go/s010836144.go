package main

import (
	"fmt"
)

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)
	if (h * w) % 2 == 0 {
		fmt.Println(h * w / 2)
	} else {
		fmt.Println(h * w / 2 + 1)
	}
}
