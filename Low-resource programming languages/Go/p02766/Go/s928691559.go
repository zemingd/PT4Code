package main

import (
	"fmt"
	"math"
)

func logAB(a float64, b float64) float64 {
	return math.Log10(b) / math.Log10(a)
}
func main() {
	// K 進数
	var N, K int
	fmt.Scan(&N, &K)

	d := logAB(float64(K), float64(N)) + 1.
	fmt.Println(int(d))

}
