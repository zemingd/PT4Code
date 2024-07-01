package main

import (
	"fmt"
	"math"
	"math/big"
)

func main() {
	solve()
}

func solve() {
	var a, b int
	fmt.Scan(&a, &b)
	if a > b {
		for i := 0; i < a; i++ {
			fmt.Print(b)
		}
	}
	if a <= b {
		for i := 0; i < b; i++ {
			fmt.Print(a)
		}
	}
}

func max(x int, y ...int) int {
	res := float64(x)
	for _, z := range y {
		res = math.Max(res, float64(z))
	}
	return int(res)
}

func min(x int, y ...int) int {
	res := float64(x)
	for _, z := range y {
		res = math.Min(res, float64(z))
	}
	return int(res)
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}

func sqrt(x int) int {
	return int(math.Sqrt(float64(x)))
}

func int2Int(x int) big.Int {
	var res big.Int
	res.SetInt64(int64(x))
	return res
}
