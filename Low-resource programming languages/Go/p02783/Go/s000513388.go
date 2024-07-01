package main

import (
	"fmt"
	"math"
)

func main() {
	var h, a float64
	fmt.Scan(&h, &a)
	fmt.Println(int(math.Ceil(h / a)))
}
