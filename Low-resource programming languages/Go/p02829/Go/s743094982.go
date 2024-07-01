package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)

	for i := 1; i <= 3; i++ {
		if a == i || b == i {
			continue
		}
		fmt.Println(i)
	}
}
