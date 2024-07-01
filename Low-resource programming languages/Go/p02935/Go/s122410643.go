package main

import "fmt"

import "sort"

func main() {
	var n int
	fmt.Scan(&n)
	v := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}
	sort.Float64s(v)

	var ans float64
	ans = (v[0] + v[1]) / 2

	if n == 2 {
		fmt.Println(ans)
		return
	}
	for i := 2; i < n; i++ {
		ans = (ans + v[i]) / 2
	}
	fmt.Println(ans)
}
