package main

import (
	"fmt"
	"math"
)

func main() {
	var r int
	fmt.Scan(&r)

	fmt.Println(3 * math.Pow(float64(r), 2))
}
