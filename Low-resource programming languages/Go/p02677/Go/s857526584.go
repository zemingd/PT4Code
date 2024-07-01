package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, H, M float64
	fmt.Scan(&A, &B, &H, &M)
	HH := H*30.0 + M*0.5
	MM := M * 6.0
	rad := (max(HH, MM) - min(HH, MM)) * math.Pi / 180.0
	ans := math.Sqrt(math.Pow(A, 2) + math.Pow(B, 2) - 2*A*B*math.Cos(rad))
	fmt.Println(ans)
}

func max(a, b float64) float64 {
	if a < b {
		return b
	}
	return a
}

func min(a, b float64) float64 {
	if a < b {
		return a
	}
	return b
}
