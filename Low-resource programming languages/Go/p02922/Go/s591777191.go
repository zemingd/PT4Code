package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if (b-1)%(a-1) == 0 {
		fmt.Println((b - 1) / (a - 1))
	} else {
		fmt.Println((b-1)/(a-1) + 1)
	}
}
