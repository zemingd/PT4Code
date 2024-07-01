package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	for i := 1; i <= 3; i++ {
		if i != a && i != b {
			fmt.Println(i)
		}
	}
}
