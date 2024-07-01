package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if a >= 13 {
		fmt.Print(b)
	} else if a <= 12 && a >= 6 {
		fmt.Print(b / 2)
	} else {
		fmt.Print(0)
	}
}
