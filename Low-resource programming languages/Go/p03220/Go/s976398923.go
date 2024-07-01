package main

import (
	"fmt"
	"log"
	"math"
)

func main() {
	var N, bestI int
	var A, T float64
	var mind float64
	fmt.Scan(&N)
	fmt.Scan(&T)
	fmt.Scan(&A)
	Hn := make([]float64, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&Hn[i])
	}
	mind = math.MaxFloat64
	for i, v := range Hn {
		Td := math.Abs(A - (T - 0.006*v))
		// log.Printf("[dbg01] i->%d Hi->%.0f Td->%.1f\n", i, v, Td)
		if mind > Td {
			mind = Td
			bestI = i
			// log.Printf("[dbg02] i->%d, mind->%.1f\n", i, Td)
		}
	}
	fmt.Println(bestI + 1)
}
