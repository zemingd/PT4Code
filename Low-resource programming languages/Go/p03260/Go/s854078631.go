package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	for c := 1; c <= 3; c++ {
		if (a*b*c)%2 == 1 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
