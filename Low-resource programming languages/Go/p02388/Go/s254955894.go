package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	if _, err := fmt.Scan(&n); err != nil {
		panic(err)
	}

	n_cube := int(math.Pow(float64(n), 3))
	fmt.Println(n_cube)
}

