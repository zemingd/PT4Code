package main

import (
	"fmt"
	"math"
)

func main() {
	var N, L int
	fmt.Scan(&N, &L)

	sum := 0
	minAbs := L
	for i := 1; i <= N; i++ {
		aji := L + i - 1

		sum += aji
		if abs(aji) < abs(minAbs) {
			minAbs = aji
		}
	}

	fmt.Println(sum - minAbs)

}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}
