package main

import (
	"fmt"
	"math"
)

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	x := solve(n, a, b)
	fmt.Println(x)
}

func solve(n, a, b int) int {
	d := int(math.Abs(float64(a - b)))
	if d%2 == 0 {
		return d / 2
	}

	da := a - 1
	if da < (n - a) {
		da = n - a
	}
	db := b - 1
	if db < (n - b) {
		db = n - b
	}

	if da < db {
		return da
	} else {
		return db
	}
}
