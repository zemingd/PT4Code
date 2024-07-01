package main

import (
	"fmt"
	"math"
)

var (
	n      uint64
	cap    []uint64
)

func main() {
	cap = make([]uint64, 5)
	fmt.Scan(&n)
	fmt.Scan(&cap[0])
	fmt.Scan(&cap[1])
	fmt.Scan(&cap[2])
	fmt.Scan(&cap[3])
	fmt.Scan(&cap[4])

	var min uint64 = math.MaxUint64
	minIndex := -1
	for i := 0; i < 5; i++ {
		if min > cap[i] {
			min = cap[i]
			minIndex = i
		}
	}

	fmt.Println(n / min + (5 - uint64(minIndex)) + uint64(minIndex))
}
