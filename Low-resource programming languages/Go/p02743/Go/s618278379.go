package main

import (
	"fmt"
	"math"
)

var (
	A int
	B int
	C int
)

func main() {
	fmt.Scanln(&A, &B, &C)
	var (
		AF  float64 = float64(A)
		BF  float64 = float64(B)
		ABF float64 = math.Sqrt(AF * BF)
		CF  float64 = float64(C)
	)
	if ABF < CF-(AF+BF)/2 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
