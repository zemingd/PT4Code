package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	v := make([]float64, n)
	for i := range v {
		fmt.Scan(&v[i])
	}
	sort.Float64s(v)
	ans := (v[0] + v[1]) / 2
	for i := 2; i < len(v); i++ {
		ans = (ans + v[i]) / 2
	}
	fmt.Println(ans)
}
