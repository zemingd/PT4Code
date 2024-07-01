package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scan(&x)

	ans := 1
	for b := 2; b < x; b++ {
		for q := 2; q < x; q++ {
			num := int(math.Pow(float64(b), float64(q)))
			if num < x {
				ans = num
			} else {
				break
			}
		}
	}

	fmt.Println(ans)
}
