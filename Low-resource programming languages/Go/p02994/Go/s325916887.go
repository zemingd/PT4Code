package main

import (
	"fmt"
	"math"
	"sort"
)

type ByAbs []int
func (a ByAbs) Len() int {return len(a)}
func (a ByAbs) Swap(i, j int) {a[i], a[j] = a[j], a[i]}
func (a ByAbs) Less(i, j int) bool {return (math.Abs(float64(a[i]))) < math.Abs(float64(a[j]))}

func main() {
	var N, L int
	fmt.Scanf("%d", &N)
	fmt.Scanf("%d", &L)

	tastes := make([]int, N)
	for i:=0; i<N; i++ {
		tastes[i] = L+i
	}
	sort.Sort(ByAbs(tastes))
	//fmt.Println(tastes)

	ans := 0
	for _, t := range tastes[1:] {
		ans += t
	}
	fmt.Println(ans)
}
