package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, H, M float64
	fmt.Scan(&A, &B, &H, &M)
	fmt.Println(H, M)
	var theta float64 = float64(((5*H - M) * math.Pi / float64(30)))

	cos := math.Cos(theta)
	var r float64 = A*A + B*B - 2*A*B*cos
	fmt.Println(math.Sqrt(r))
}
