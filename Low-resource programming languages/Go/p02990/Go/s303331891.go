package main

import (
	"fmt"
	"math"
)

var A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z int
var mod int = pow(10, 9) + 7
var ans int

func main() {
	fmt.Scan(&N, &K)

	red := N - K
	blue := K

	for i := 1; i <= K; i++ {
		ans = combination(red+1, i) * combination(blue-1, i-1) % mod
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

var fac [10000]int
var finv [10000]int
var inv [10000]int

func combination_init() {
	fac[0], fac[1] = 1, 1
	finv[0], finv[1] = 1, 1
	inv[1] = 1

	for i := 2; i < 10000; i++ {
		fac[i] = fac[i-1] * i % mod
		inv[i] = mod - inv[mod%i]*(mod/i)%mod
		finv[i] = finv[i-1] * inv[i] % mod
	}
}

func combination(x, y int) int {
	if x < y {
		return 0
	}
	if fac[0] != 1 {
		combination_init()
	}
	return fac[x] * (finv[y] * finv[x-y] % mod) % mod
}

func permutation(x, y int) int {
	if x < y {
		return 0
	}
	if fac[0] != 1 {
		combination_init()
	}
	return fac[x] * (finv[x-y] % mod) % mod
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
