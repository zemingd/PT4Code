package main

import (
	"fmt"
	"math"
)

var N int
var ans, res int = 1, 1
var mod int = pow(10, 9) + 7

func main() {
	fmt.Scan(&N)
	//A := make([]int, N)
	m := make(map[int]int)

	for i := 0; i < N; i++ {
		var t int
		fmt.Scan(&t)
		m[t]++
	}
	if 1 < m[0] {
		fmt.Println(0)
	} else {
		for key, value := range m {
			if key%2 == 1 && len(m)%2 == 1 {
				fmt.Println(0)
				return
			} else {
				ans *= value
			}
		}
		fmt.Println(ans)
	}
}

/*  ----------------------------------------  */

func gcd(x, y uint64) uint64 {
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

type XY struct {
	x int
	y int
}

type SortBy [][]int

func (a SortBy) Len() int      { return len(a) }
func (a SortBy) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool {
	return a[i][1] < a[j][1]
}
