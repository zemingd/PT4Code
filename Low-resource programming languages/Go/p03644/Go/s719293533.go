package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	sl := []int{64, 32, 16, 8, 4, 2, 1}

	for _, s := range sl {
		if s <= n {
			fmt.Println(s)
			return
		}
	}
}
