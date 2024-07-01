package main

import (
	"fmt"
	"math"
)

var N, M int

func main() {
	fmt.Scan(&N, &M)
	//reader := bufio.NewReaderSize(os.Stdin, 1000000)
	xxx := make([]LR, M)

	for i := 0; i < M; i++ {
		fmt.Scan(&xxx[i].L, &xxx[i].R)
	}
	L_max := 0
	R_min := 999999999

	for i := 0; i < M; i++ {
		L_max = max(L_max, xxx[i].L)
		R_min = min(R_min, xxx[i].R)
	}
	fmt.Println(max(R_min-L_max+1, 0))
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

type LR struct {
	L int
	R int
}

// type LR []int

// func (a SortBy) Len() int           { return len(a) }
// func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
// func (a SortBy) Less(i, j int) bool { return a[i] < a[j] }
