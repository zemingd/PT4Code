package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, T float64
	fmt.Scan(&A, &B, &T)
	fmt.Println(B * math.Floor((T+0.5)/A))
}