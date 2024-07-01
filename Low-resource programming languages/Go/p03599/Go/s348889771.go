package main

import (
	"fmt"
	"math"
)

var A, B, C, D, E, F int

func main() {
	fmt.Scan(&A, &B, &C, &D, &E, &F)
	var ans_w, ans_s int = 100 * A, 0

	for a := 0; a <= F; a += 100 * A {
		for b := 0; a+b <= F; b += 100 * B {
			for c := 0; a+b+c <= F; c += C {
				for d := 0; a+b+c+d <= F; d += D {
					if E*(a+b)/100 < c+d {
						break
					}
					if float64(ans_s*100)/(float64(ans_w+ans_s)) < float64(float64(c+d)*100)/float64((a+b+c+d)) {
						ans_w = a + b
						ans_s = c + d
					}
				}
			}
		}
	}
	fmt.Println(ans_w+ans_s, ans_s)
}

/*  ----------------------------------------  */

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

type SortBy []XY

func (a SortBy) Len() int      { return len(a) }
func (a SortBy) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool {
	if a[i].x == a[j].x {
		return a[i].y > a[j].y
	}
	return a[i].x > a[j].x
}
