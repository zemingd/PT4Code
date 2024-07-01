package main

import (
	"fmt"
	"math"
)

func main() {
	fromConsole()
}

func fromConsole() {
	var x int
	fmt.Scan(&x)
	run(x)
}

func run(x int) {
	i := 0
	r := 100
	for r < x {
		i++
		r += calcRishi(r)
	}
	fmt.Println(i)
}

func calcRishi(i int) int {
	f := math.Trunc(float64(i) * 0.01)
	return int(f)
}
