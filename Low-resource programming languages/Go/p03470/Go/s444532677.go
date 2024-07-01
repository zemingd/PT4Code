package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var dSlice []int
	var d int
	for i := 0; i < n; i++ {
		fmt.Scan(&d)
		dSlice = append(dSlice, d)
	}
	dSet := make(map[int]struct{})
	for _, v := range dSlice {
		dSet[v] = struct{}{}
	}
	fmt.Println(len(dSet))
}
