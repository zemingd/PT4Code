package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	sort.Ints(arr)
	sum := arr[N-1]
	need := N - 2

	for i := N - 2; need > 0; i-- {
		if need > 1 {
			sum += arr[i] * 2
			need -= 2
		} else {
			sum += arr[i]
			need--
		}
	}
	fmt.Printf("%d\n", sum)
}
