package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, H, M float64
	fmt.Scanf("%f%f%f%f", &A, &B, &H, &M)

	rad := math.Abs((H+(M/60.0))/12.0 - M/60.0)
	if rad == 0 {
		fmt.Println(math.Abs(A - B))
		return
	}
	if rad == 0.5 {
		fmt.Println(A + B)
		return
	}
	if rad > 0.5 {
		rad = 1.0 - rad
	}

	c := math.Sqrt(math.Pow(A, 2) + math.Pow(B, 2) - 2.0*A*B*math.Cos(2.0*rad*math.Pi))
	fmt.Println(c)
}
