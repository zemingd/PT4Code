package main

import (
	"fmt"
	"sort"
)

// 命名に特に意味はないよ
type YO struct {
	Index int
	Diff  float64
}

type YOS []YO

func (yos YOS) Len() int {
	return len(yos)
}
func (yos YOS) Swap(i, j int) {
	yos[i], yos[j] = yos[j], yos[i]
}

func (yos YOS) Less(i, j int) bool {
	return yos[i].Diff < yos[j].Diff
}

func main() {
	var N int
	var T, A float64
	fmt.Scan(&N, &T, &A)
	HS := make(YOS, N)
	for i := 0; i < N; i++ {
		var H float64
		fmt.Scan(&H)
		dif := abs(A - (T - H*0.006))
		HS[i] = YO{Index: i + 1, Diff: dif}
	}
	sort.Sort(HS)
	fmt.Println(HS[0].Index)
}

func abs(a float64) float64 {
	if a < 0 {
		a *= -1.0
	}
	return a
}
