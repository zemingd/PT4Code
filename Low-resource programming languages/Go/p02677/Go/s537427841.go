package main

import (
	"fmt"
	"math"
)

var A, B, H, M float64

func main() {
	fmt.Scan(&A, &B, &H, &M)
	rad := func() float64 {
		return math.Pi * ((2.0 / 720.0 * (60.0*H + M)) - 2.0/60.0*M)
	}
	fmt.Println(math.Sqrt(A*A + B*B - 2*A*B*math.Cos(rad())))
}
