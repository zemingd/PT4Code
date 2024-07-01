package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)
	ax := make([]float64, N)
	ay := make([]float64, N)
	ah := make([]float64, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&ax[i], &ay[i], &ah[i])
	}
	for x := 0; x <= 100; x++ {
		for y := 0; y <= 100; y++ {
			var H float64
			b := true
			for i := 0; i < N; i++ {
				if ah[i] == 0 {
					continue
				}
				if H == 0 {
					H = ah[i] + math.Abs(float64(x)-ax[i]) + math.Abs(float64(y)-ay[i])
				}
				w := math.Max(ah[i]+math.Abs(float64(x)-ax[i])+math.Abs(float64(y)-ay[i]), 0)
				if H != w {
					b = false
					break
				}
			}
			if b {
				fmt.Printf("%d %d %d\n", x, y, int64(H))
				return
			}
		}
	}
}