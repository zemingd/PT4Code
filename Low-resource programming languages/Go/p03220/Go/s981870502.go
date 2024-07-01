package main

import (
	"fmt"
	"math"
)

func main() {
	var N, T, A, bestI int
	var mind float64
	fmt.Scan(&N)
	fmt.Scan(&T)
	fmt.Scan(&A)
	Hn := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&Hn[i])
	}
	mind = math.MaxFloat64
	for i, v := range Hn {
		Td := math.Abs(float64(A) - (float64(float64(T) - float64(0.006*float64(v)))))
		// log.Printf("[dbg01] i->%d Hi->%d Td->%.1f\n", i, v, Td)
		if mind > Td {
			mind = Td
			bestI = i
			// log.Printf("[dbg02] i->%d, mind->%.1f\n", i, Td)
		}
	}
	fmt.Println(bestI + 1)
}
