package main

import (
	"fmt"
	"math"
)

func main() {
	var a int
	var b float64
	fmt.Scan(&a, &b)
	//af := float64(a)

	bn := math.Floor(b)
	bf := b - bn

	ans := (int(bn) * a) + int(math.Floor(float64(a)*bf))
	//ansi := int(math.Floor(ans))
	fmt.Println(ans)
}