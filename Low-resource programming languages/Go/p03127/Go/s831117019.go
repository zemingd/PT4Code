package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	var min int
	fmt.Scan(&min)
	
	for i := 0; i < N-1; i++ {
		var a int
		fmt.Scan(&a)
		if a != min {
			if a % 2 == 1 || min % 2 == 1 {
				min = 1
				break
			} else {
				min = 2
			}
		}
	}
	fmt.Println(min)
}
