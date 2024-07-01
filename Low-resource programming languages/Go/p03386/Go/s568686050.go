package main

import (
	"fmt"
	"math"
)

func main() {
	var (
		A, B, K int
	)
	fmt.Scan(&A, &B, &K)
	if B-A+1 <= 2*K {
		for i := A; i <= B; i++ {
			fmt.Println(i)
		}
		return
	}
	for i := A; i < A+K; i++ {
		fmt.Println(i)
	}
	for i := B - K + 1; i <= B; i++ {
		fmt.Println(i)
	}
}

/*  ----------------------------------------  */

func max(x ...int) int {
	var res int = x[0]
	for i := 1; i < len(x); i++ {
		res = int(math.Max(float64(x[i]), float64(res)))
	}
	return res
}

func min(x ...int) int {
	var res int = x[0]
	for i := 1; i < len(x); i++ {
		res = int(math.Min(float64(x[i]), float64(res)))
	}
	return res
}
func pow(x, y int) int { return int(math.Pow(float64(x), float64(y))) }
func abs(x int) int    { return int(math.Abs(float64(x))) }
func floor(x int) int  { return int(math.Floor(float64(x))) }
