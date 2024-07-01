package main

import (
	"fmt"
)

func main() {
	var x, y int
	fmt.Scanf("%d %d", &x, &y)

	if (y - 2 * x) % 2 != 0 {
		fmt.Printf("No")
		return
	}
	var b = (y - 2 * x) / 2
	var a = x - b
	if a < 0 || b < 0 {
		fmt.Printf("No")
	} else if (x == (a + b) && y == (2 * a + 4 * b)) {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}
}
