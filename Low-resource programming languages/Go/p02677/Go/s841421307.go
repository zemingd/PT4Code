package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, H, M float64
	fmt.Scan(&A, &B, &H, &M)

	ans := exec(A, B, H, M)
	fmt.Println(ans)
}

func exec(A, B, H, M float64) float64 {
	ang := math.Abs((H * 30) - (M * 6))
	v := A*A + B*B - (2 * A * B * math.Cos(ang * math.Pi / 180))

	return math.Sqrt(v)
}

