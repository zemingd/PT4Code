package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)

	result := 1
	for i := 1; i <= x; i++ {
		for j := 1; j <= x; j++ {
			if i == j*j {
				result = i
			}
		}
	}

	fmt.Println(result)
}
