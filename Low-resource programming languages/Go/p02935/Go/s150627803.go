package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	v := make([]int, n)
	for i:=0; i<n;i++ {
		fmt.Scan(&v[i])
	}
	sort.Ints(v)
	var ans float64
	ans = (float64(v[0]) + float64(v[1])) / 2
	for i:=2;i<n;i++ {
		ans = (ans + float64(v[i])) / 2
	}
	fmt.Println(ans)
}