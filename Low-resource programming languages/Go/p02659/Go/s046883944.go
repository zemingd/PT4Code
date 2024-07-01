package main

import (
	"fmt"
	"math"
)

func main() {
	var a int64
	var b float64
	fmt.Scan(&a, &b)
	af := float64(a)

	ans := af * b
	ansi := int(math.Floor(ans))
	fmt.Println(ansi)
}