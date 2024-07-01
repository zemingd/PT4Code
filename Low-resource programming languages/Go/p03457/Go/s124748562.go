package main

import (
	"fmt"
)

func main() {
	// t >= x + y
	// t % 2 == (x + y) % 2
	var n int
	fmt.Scan(&n)
	var t, x, y int
	for i := 0; i < n; i++ {
		fmt.Scan(&t, &x, &y)

		if t < x+y || t%2 != (x+y)%2 {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
