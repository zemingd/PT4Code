package main

import (
	"fmt"
	"math"
)

func main() {
	var x float64
	fmt.Scan(&x)

	max := float64(1)
	bp := float64(0)
	for b := float64(1); b <= x; b++ {
		for p := float64(2); p <= x; p++ {
			bp = math.Pow(b, p)
			if x < bp {
				break
			}
			max = math.Max(max, bp)
		}
	}
	fmt.Println(max)
}
