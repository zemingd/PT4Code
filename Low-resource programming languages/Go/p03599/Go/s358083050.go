package main

import (
	"fmt"
)

func main() {
	var A, B, C, D, E, F, W, S, MS int
	var density, max float64 = 0, 0
	var anss, answ int
	fmt.Scan(&A, &B, &C, &D, &E, &F)
	for a := 0; a <= 30; a++ {
		W = 100 * A * a
		for b := 0; b <= F-W; b++ {
			W += 100 * B * b
			MS = (a*A + b*B) * E
			for c := 0; c*C <= MS; c++ {
				for d := 0; d*D+c*C <= MS; d++ {
					S = c*C + d*D
					if 0 < W && 0 < S && S <= MS && W+S <= F {
						density = float64(100) * float64(S) / float64(W+S)
						if density > max {
							max = density
							anss = S
							answ = W
						}
					}
				}
			}
		}
	}
	fmt.Println(answ+anss, anss)
}
