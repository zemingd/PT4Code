package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, N int
	fmt.Scanf("%d %d %d", &A, &B, &N)
	maxx := N
	maxAXB := N
	maxXB := N
	for x := 1; x <= N; x++ {
		AXB := A * x % B
		XB := x % B
		if maxXB-maxAXB < XB-AXB {
			maxx = x
			maxAXB = AXB
			maxXB = XB
		}
	}
	fmt.Println(math.Floor(float64(A*maxx)/float64(B)) - (float64(A) * math.Floor(float64(maxx)/float64(B))))
}