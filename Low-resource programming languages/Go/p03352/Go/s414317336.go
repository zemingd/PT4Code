package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scan(&x)
	r := 0

	for i := 1; i <= x; i++ {
		for p := 2; p <= 10; p++ {
			t_r := math.Pow(float64(i), float64(p))
			if int(t_r) <= x && int(t_r) > r {
				r = int(t_r)
			}
		}
	}
	fmt.Println(r)
}
