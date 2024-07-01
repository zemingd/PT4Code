package main

import (
	"fmt"
	"math"
)

func main() {
	var an, bn, m int
	fmt.Scan(&an, &bn, &m)

	a := make([]int, an)
	b := make([]int, bn)

	aMin := math.MaxInt32
	bMin := math.MaxInt32
	pMin := math.MaxInt32

	for i := 0; i < an; i++ {
		fmt.Scan(&a[i])
		if a[i] < aMin {
			aMin = a[i]
		}
	}
	for i := 0; i < bn; i++ {
		fmt.Scan(&b[i])
		if b[i] < bMin {
			bMin = b[i]
		}
	}

	for i := 0; i < m; i++ {
		var x, y, c int
		fmt.Scan(&x, &y, &c)
		p := a[x-1] + b[y-1] - c
		if p < pMin {
			pMin = p
		}
	}
	if aMin+bMin < pMin {
		fmt.Println(aMin + bMin)
	} else {
		fmt.Println(pMin)
	}

}
