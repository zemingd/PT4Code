package main

import (
	"fmt"
	"math"
)

func main() {
	var l, r int64
	fmt.Scan(&l)
	fmt.Scan(&r)

	if r-l >= 2019 {
		fmt.Println(0)
		return
	}

	for i := l; i <= r; i++ {
		if i%2019 == 0 {
			fmt.Println(0)
			return
		}
	}

	min := int64(math.MaxInt64)
	for i := l; i <= r; i++ {
		for j := i + 1; j <= r; j++ {
			x := ((i % 2019) * (j % 2019)) % 2019
			if x < min {
				min = x
			}
		}
	}
	fmt.Println(min)
}
