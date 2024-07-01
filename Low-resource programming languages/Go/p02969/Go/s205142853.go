package main

import (
	"fmt"
	"math"
)

func main() {
	var r float64
	fmt.Scan(&r)
	fmt.Println(int(3 * math.Pow(r, 2)))
}
