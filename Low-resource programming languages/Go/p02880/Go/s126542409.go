package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	for i := 9; i > 0; i-- {
		for j := 9; j > 0; j-- {
			if i*j == n {
				fmt.Println("Yes")
				return
			} else if i*j < n {
				break
			}
		}
	}
	fmt.Println("No")
}
