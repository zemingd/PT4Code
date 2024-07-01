package main

import (
	"fmt"
)

func main() {
	var A, B, C, D, E, F, r1, r2 int
	var m, w float64
	fmt.Scan(&A, &B, &C, &D, &E, &F)
	for i := 0; i <= 30; i++ {
		for j := 0; j <= 30; j++ {
			if i == 0 && j == 0 {
				continue
			}
			for k := 0; k < 10000; k++ {
				for l := 0; l < 10000; l++ {
					water := i*A*100 + j*B*100
					sugar := k*C + l*D
					if water+sugar > F || water < sugar {
						break
					}
					if sugar > E*(i*A+j*B) {
						break
					}
					w = float64(100*sugar) / float64(water+sugar)
					if m < w {
						m = w
						r1 = water + sugar
						r2 = sugar
					}
				}
			}
		}
	}
	fmt.Printf("%d %d\n", r1, r2)
}