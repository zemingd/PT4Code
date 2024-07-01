package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	x := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&x[i])
	}
	y := make([]int, N)
	copy(y, x)
	sort.Ints(y)
	m1, m2 := y[-1+N/2], y[N/2]
	for _, v := range x {
		if v <= m1 {
			fmt.Println(m2)
		} else {
			fmt.Println(m1)
		}
	}
}
