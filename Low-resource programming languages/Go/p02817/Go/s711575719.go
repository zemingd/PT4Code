package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)

	a := true
	for xx := x;; xx++ {
		for b := 2; b <= xx/2; b++ {
			if xx%b == 0 {
				a = false
				break
			}
		}
		if a == true {
			fmt.Println(xx)
			return
		}
	}
}