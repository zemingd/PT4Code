package main

import (
	"fmt"
)

func main() {
	var n int
	var hit bool
	fmt.Scan(&n)

	for i := 0; i <= n/4 && !hit; i++ {
		for j := 0; j <= n/7; j++ {
			if 4 * i + j * 7 == n {
				hit = true
				break
			}
		}
	}

	if hit {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}