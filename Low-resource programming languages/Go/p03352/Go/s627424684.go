package main

import (
	"fmt"
	"math"
)

func main() {
	var X int
	fmt.Scan(&X)
	max := 0
	if X == 1 {
		fmt.Println("1")
		return
	}
	for i := 2; i < 35; i++ {
		for j := 2; j < 10; j++ {
			n := int(math.Pow(float64(i), float64(j)))
			if n > X {
				break
			}
			if n > max {
				max = n
			}
		}
	}
	fmt.Println(max)
}