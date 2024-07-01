package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scan(&x)

	result := 1
	for i := 2; i < x; i++ {
		for j := 2; j < x; j++ {
			now := int(math.Pow(float64(i), float64(j)))
			if now > x {
				break
			} else if result < now {
				result = now
			}
		}
	}

	fmt.Println(result)
}
