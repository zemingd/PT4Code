package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	var a []int
	for i := 0; i < n; i++ {
		var t int
		fmt.Scanf("%d", &t)
		a = append(a, t)
	}
	sort.Sort(sort.IntSlice(a))
	ans := math.MaxInt32
	for i := 0; i < (n - k + 1); i++ {
		d := a[i+k-1] - a[i]
		if ans > d {
			ans = d
		}
	}
	fmt.Println(ans)
}
