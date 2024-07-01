package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	amap := make(map[int]int)

	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
		amap[i] = a[i]
	}
	first := a[0]

	for i := 0; i < N; i++ {
		for j, v := range amap {
			elem := a[i]
			if elem > first {
				continue
			}
			if j > i && v > elem {
				delete(amap, j)
			}
		}
	}
	fmt.Println(len(amap))
}
