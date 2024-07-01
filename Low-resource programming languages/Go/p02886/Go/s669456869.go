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
	var n, d int
	fmt.Scan(&n)
	sum := 0
	res := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&d)
		sum += d
		res -= d * d
	}
	res += sum * sum
	fmt.Print(res / 2)
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
