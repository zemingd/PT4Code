package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	b := 0
	for i := 0; i < n; i++ {
		var h int
		fmt.Scan(&h)

		if b <= h {
			b = h
			continue
		}

		if b > h+1 {
			fmt.Print("No")
			return
		}

		b = h
	}

	fmt.Print("Yes")
}
