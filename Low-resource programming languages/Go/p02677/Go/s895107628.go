package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, H, M int
	fmt.Scanf("%d %d %d %d", &A, &B, &H, &M)

	angleH := float64(H)/12.0*360.0 + (float64(M) / 60.0 * (360.0 / 12))
	angleM := float64(M) / 60.0 * 360.0
	angleAB := math.Abs(angleH - angleM)

	AA := float64(A*A) + float64(B*B) - (2.0 * float64(A) * float64(B) * math.Cos(angleAB*math.Pi/180))
	fmt.Println(math.Sqrt(AA))
}
