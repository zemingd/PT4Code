package main

import (
	"fmt"
	"math"
)

func main() {
	var h, a float64
	fmt.Scanf("%f %f", &h, &a)
	fmt.Println(math.Ceil(h / a))
}
