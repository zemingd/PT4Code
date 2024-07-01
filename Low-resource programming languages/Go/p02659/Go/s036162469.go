package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b float64
	fmt.Scan(&a, &b)

	fmt.Printf("%d", int(math.Trunc(a*b)))

}

