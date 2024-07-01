package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i <=25; i++ {
		for j := 0; j < 15; j++ {
			sum := 4 * i + 7 * j
			if sum == n {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}