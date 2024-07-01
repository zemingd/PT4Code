package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	switch {
	case a >= 13:
		fmt.Println(b)
	case 6 <= a && a <= 12:
		fmt.Println(b / 2)
	default:
		fmt.Println(0)
	}
}
