package main

import (
	"fmt"
	"math"
)

func main() {
	var p, q, r float64
	fmt.Scan(&p, &q, &r)
	fmt.Println(math.Min(p+q, math.Min(q+r, r+p)))
}