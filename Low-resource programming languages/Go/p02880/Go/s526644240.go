package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[int]bool)
	for i := 1; i <= 9; i++ {
		for j := 1; j <= 9; j++ {
			m[i*j] = true
		}
	}

	if m[n] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
