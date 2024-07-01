package main

import (
	"fmt"
)

func main() {

	var a, b, c, count int

	fmt.Scanf("%d %d %d", &a, &b, &c)

	for i := 1; i <= c; i++ {
		if i%a == 0 {
			count += b
		}
	}
	fmt.Printf("%d", count)
}
