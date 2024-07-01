package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	var c [3]int
	c[a-1] = 1
	c[b-1] = 1

	for i, v := range c {
		if v == 0 {
			fmt.Println(i + 1)
		}
	}

}
