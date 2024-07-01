package main

import (
	"fmt"
	"math"
)

func main() {
	var a int
	var b float64
	fmt.Scan(&a, &b)
	// fmt.Println(b * 100)
	r := ((a * int(math.Floor(b*100))) / 100)
	fmt.Println(r)
}
