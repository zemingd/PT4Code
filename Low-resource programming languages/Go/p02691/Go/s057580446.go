package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	numberToHeight := make([]int, N)

	z := make(map[int][]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&numberToHeight[i])
		z[i-numberToHeight[i]] = append(z[i-numberToHeight[i]], i)
	}

	ret := 0
	for i := 0; i < N; i++ {
		hi := numberToHeight[i]
		ret += len(z[hi+i])
	}
	fmt.Println(ret)
}
