package main

import (
	"fmt"
)

func main() {
	var x, y int
	fmt.Scan(&x, &y)
	a := 0

	for i := 0; i < x; i++ {
		ni := 2 * i
		yo := 4 * (x - i)
		if ni+yo == y {
			a = 1
		}

	}
	if a == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
