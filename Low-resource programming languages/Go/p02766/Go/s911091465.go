package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	s := strconv.Itoa(convert(N, K))
	fmt.Println(len(s))
}

func convert(x, n int) int {
	var y, i, z int
	for x > 0 {
		z = x % n
		y += z * pow(10, i)
		x = x / n
		i++
	}
	return y
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}
