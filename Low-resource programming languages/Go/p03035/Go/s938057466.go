package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)

	if a >= 13 {
		fmt.Println(b)
	} else if 6 <= a && a <= 12 {
		fmt.Println(b / 2)
	} else {
		fmt.Println(0)
	}
}
