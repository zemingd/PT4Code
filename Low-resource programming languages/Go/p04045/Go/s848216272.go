package main

import (
	"fmt"
	"math"
	"strconv"
)

var K, A int
var ans int = 9999999999
var N string
var D []int

func main() {
	fmt.Scan(&N, &K)
	D = make([]int, 10)

	for i := 0; i < K; i++ {
		var t int
		fmt.Scan(&t)
		D[t]--
	}
	dfs(0, [10]int{})
	fmt.Println(ans)
}

func dfs(n int, comb [10]int) {
	if n == len(N) {
		calc(comb)
	} else {
		for i := 0; i < 10; i++ {
			if D[i] == 0 {
				comb[n] = i
				dfs(n+1, comb)
			}
		}
	}
}

func calc(comb [10]int) {

	var res int
	n, _ := strconv.Atoi(N)

	for i := 0; i < len(N); i++ {
		res *= 10
		res += comb[i]
	}
	if n <= res {
		ans = min(ans, res)
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

func combination(x, y int) int {
	return permutation(x, y) / permutation(y, y)
}

func permutation(x, y int) int {
	var ans int = 1
	for i := x - y; 0 < i; i-- {
		ans *= i
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
