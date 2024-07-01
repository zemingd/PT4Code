package main

import (
	"fmt"
)

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c)
	fmt.Scan(&k)

	isYes := false

	for i := 0; i < k; i++ {
		if b <= a {
			b = b * 2
		} else if c <= b {
			c = c * 2
		}

		if a < b && b < c {
			isYes = true
			break
		}
	}

	if isYes {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}
}