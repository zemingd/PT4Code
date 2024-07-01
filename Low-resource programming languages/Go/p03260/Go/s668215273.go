package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	a_b := a * b
	var c = [3]int{1, 2, 3}
	for i := 0; i < len(c); i++ {
		if (a_b*i)%2 != 0 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
