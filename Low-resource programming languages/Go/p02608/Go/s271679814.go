package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	var count int
	var sqrt float64

	fmt.Scan(&N)

	for i := 1; i <= N; i++ {
		sqrt = math.Sqrt(float64(i));
		for x := 1; x < int(sqrt); x++ {
			for y := 1; y < int(sqrt); y++ {
				for z := 1; z < int(sqrt); z++ {
					if(calc(x, y, z) == i) {

						count++
					}
				}
			}
		}
		fmt.Println(count)
		count = 0
	}
}

func calc(x, y, z int) 	int {
	return (x*x) + (y*y) + (z*z) + (x*y) + (z*y) + (z*x)
}