package main

import (
	"fmt"
	"sort"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	v := make([]int, n)
	for i:=0; i<n; i++ {
		fmt.Scan(&v[i])
	}
	sort.Sort(sort.IntSlice(v))
	ans := 0.0
	for i:=0; i<n; i++ {
		if i<2 {
			ans += float64(v[i])
		} else {
			ans += float64(v[i])*math.Pow(2,float64(i-1))
		}
	}
	fmt.Println(ans/math.Pow(2,float64(n-1)))
}