package main

import (
	"fmt"
	// "math"
)

func main() {
	var n int
	fmt.Scan(&n)

	ans := "No"
	for i := 1; i < 10; i++ {
		for j := 1; j < 10; j++ {
			// fmt.Println(i, j)
			if i * j == n {
				ans = "Yes"
			}
		}
	}
	fmt.Println(ans)
}
