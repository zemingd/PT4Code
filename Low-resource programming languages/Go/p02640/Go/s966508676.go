package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if (b-a*2)%2 == 0 && a*4 >= b {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}
