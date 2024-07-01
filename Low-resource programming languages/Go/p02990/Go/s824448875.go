package main

import (
	"fmt"
	"math"
)

var A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z int

func main() {
	fmt.Scan(&N, &K)
	var mod uint64
	mod = uint64(pow(10, 9)) + 7

	red := N - K

	for i := 1; i <= min(red+1, K); i++ {
		ans := combination(uint64(red)+1, uint64(i)) * combination(uint64(K)-1, uint64(i)-1) % mod
		fmt.Println(ans)
	}
}

/*  ----------------------------------------  */

func lcm(x, y int) int {
	return (x / gcd(x, y)) * y
}

func gcd(x, y int) int {
	if x%y == 0 {
		return y
	} else {
		r := x % y
		return gcd(y, r)
	}
}

func combination(x, y uint64) uint64 {
	return permutation(x, y) / permutation(y, y)
}

func permutation(x, y uint64) uint64 {
	var ans, cnt uint64 = 1, 0
	for cnt < y {
		ans *= (x - cnt)
		cnt++
	}

	return ans
}

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
func ceil(x int) int   { return int(math.Ceil(float64(x))) }

type SortBy []int

func (a SortBy) Len() int           { return len(a) }
func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool { return a[i] > a[j] }
