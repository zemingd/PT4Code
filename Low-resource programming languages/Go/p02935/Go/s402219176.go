package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)

	v := make([]float64, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&v[i])
	}

	sort.Float64s(v)

	ans := v[0]
	for _, v := range v {
		ans = (ans + v) / 2
	}

	fmt.Println(ans)
}
