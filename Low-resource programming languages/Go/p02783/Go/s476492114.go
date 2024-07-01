package main

import (
	"fmt"
	"math"
)

func main() {
	H, A := float64(readInt()), float64(readInt())

	fmt.Println(int(math.Ceil(H / A)))
}

func loop(start, end int, f func(i int)) {
	for i := start; i < end; i++ {
		f(i)
	}
}

func readInt() int {
	var v int
	fmt.Scan(&v)
	return v
}