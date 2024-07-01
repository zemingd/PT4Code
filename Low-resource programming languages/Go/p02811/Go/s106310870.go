package main

import (
	"fmt"
)

func main() {
	var a int
	var b int
	fmt.Scanf("%d %d", &a, &b)
	if (a * 500) >= b {

		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}
