package main

import (
	"fmt"
	"math"
)

type point struct {
	X, Y float64
}

func main() {
	var N int
	fmt.Scanf("%d", &N)

	L := make([]point, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&L[i].X, &L[i].Y)
	}

	ans := 0.0
	for _, A := range L {
		for _, B := range L {
			ans += math.Hypot((A.X - B.X), (A.Y - B.Y))
		}
	}
	ans /= float64(N)

	fmt.Println(ans)
}
