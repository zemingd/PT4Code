package main

import (
	"fmt"
	"math"
)

var n int
var t, a float64

func main() {
	fmt.Scan(&n)
	fmt.Scan(&t, &a)
	hs := make([]int, n)
	for i := range hs {
		fmt.Scan(&hs[i])
	}
	min_tmp := 1e60
	cnt := 0
	ans := 0
	for i := range hs {
		cnt += 1
		tmp := math.Abs(a - (t - float64(hs[i])*0.006))
		if min_tmp > tmp {
			min_tmp = tmp
			ans = cnt
		}
	}
	fmt.Println(ans)
}
