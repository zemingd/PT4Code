package main

import (
	"fmt"
	"math"
)

func main() {
	var H, A int
	fmt.Scan(&H, &A)

	fmt.Println(int(math.Ceil(float64(H) / float64(A))))
}
