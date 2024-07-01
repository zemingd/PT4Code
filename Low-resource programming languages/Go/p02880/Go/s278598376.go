package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	r := a(n)
	fmt.Println(r)
}

func a(n int) string {
	for i := 1; i <= 9; i++ {
		for j := 1; j <= 9; j++ {
			if s := i * j; n == s {
				return "Yes"
			}
		}

	}
	return "No"
}
