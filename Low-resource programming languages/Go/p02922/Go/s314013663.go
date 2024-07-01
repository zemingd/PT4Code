package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if b-a <= 0 {
		fmt.Println(1)
	} else {
		count := 1
		total := b - a
		for {
			total -= (a - 1)
			count += 1
			if total <= 0 {
				fmt.Println(count)
				return
			}
		}
	}
}
