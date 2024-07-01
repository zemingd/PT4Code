package main

import (
	"fmt"
	"math"
)

func main() {
	var l, r int
	fmt.Scan(&l, &r)

	m := 2019
	for i := l; i <= r; i++ {
		for j := l + 1; j <= r; j++ {
			m = int(math.Min(float64((i*j)%2019), float64(m)))
			if m == 0 {
				fmt.Println(0)
				return
			}
		}
	}

	fmt.Println(m)
}
