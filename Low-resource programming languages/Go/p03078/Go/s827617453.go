package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var X, Y, Z, K int

	fmt.Scan(&X, &Y, &Z, &K)

	var A = make(SortBy, X)
	var B = make(SortBy, Y)
	var C = make(SortBy, Z)
	var ans1 = make(SortBy, 0)
	var ans2 = make(SortBy, 0)

	for i := 0; i < X; i++ {
		fmt.Scan(&A[i])
	}
	for i := 0; i < Y; i++ {
		fmt.Scan(&B[i])
	}
	for i := 0; i < Z; i++ {
		fmt.Scan(&C[i])
	}

	sort.Sort(A)
	sort.Sort(B)
	sort.Sort(C)

	for i := 0; i < X; i++ {
		for j := 0; j < Y; j++ {
			ans1 = append(ans1, A[i]+B[j])
		}
	}
	sort.Sort(ans1)
	for i := 0; i < min(len(ans1), K); i++ {
		for j := 0; j < Z; j++ {
			ans2 = append(ans2, ans1[i]+C[j])
		}
	}
	sort.Sort(ans2)
	for i := 0; i < K; i++ {
		fmt.Println(ans2[i])
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

type SortBy []int

func (a SortBy) Len() int           { return len(a) }
func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool { return abs(a[i]) > abs(a[j]) }
