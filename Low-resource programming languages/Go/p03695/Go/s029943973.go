package main

import (
	"fmt"
	"math"
)

var N, o int

func main() {
	fmt.Scan(&N)
	m := make(map[string]int, 10)

	for i := 0; i < N; i++ {
		var t int
		fmt.Scan(&t)

		if 1 <= t && t <= 399 {
			m["灰色"]++
		} else if 400 <= t && t <= 799 {
			m["茶色"]++
		} else if 800 <= t && t <= 1199 {
			m["緑色"]++
		} else if 120 <= t && t <= 1599 {
			m["水色"]++
		} else if 1600 <= t && t <= 1999 {
			m["青色"]++
		} else if 2000 <= t && t <= 2399 {
			m["黄色"]++
		} else if 2400 <= t && t <= 2799 {
			m["橙色"]++
		} else if 2800 <= t && t <= 3199 {
			m["赤色"]++
		} else {
			o++
		}
	}

	if o == 0 {
		fmt.Println(len(m), len(m))
	} else {
		fmt.Println(len(m), len(m)+o)
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

func pow(x, y int) uint64 { return uint64(math.Pow(float64(x), float64(y))) }
func abs(x int) int       { return int(math.Abs(float64(x))) }
func floor(x int) int     { return int(math.Floor(float64(x))) }

type XY struct {
	x int
	y int
}

type SortBy [][]int

func (a SortBy) Len() int      { return len(a) }
func (a SortBy) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool {
	if a[i][0] == a[j][0] {
		return a[i][1] > a[j][1]
	}
	return a[i][0] > a[j][0]
}
