package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)

	for xx := x;; xx++ {
		a := true
		for b := 2; b <= xx/2; b++ {
			if xx%b == 0 {
				a = false
				break
			}
		}
		if a {
			fmt.Println(xx)
			return
		}
	}
}