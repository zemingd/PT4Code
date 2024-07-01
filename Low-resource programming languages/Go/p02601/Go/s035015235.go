package main

import (
	"fmt"
)

func main() {
	var a, b, c, k int

	fmt.Scan(&a, &b, &c)
	fmt.Scan(&k)
	for i := 0; i < k; i++ {
		if a < b && b > c {
			c = c * 2
		} else if a > b && b < c {
			b = b * 2
		}
	}
	if a < b && b < c {
		fmt.Println("Yse")
	} else {
		fmt.Println("No")
	}

}
