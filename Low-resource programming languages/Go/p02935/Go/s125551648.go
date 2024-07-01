package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	arr := make([]float64, n)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	sort.Float64s(arr)

	for {
		newIng := (arr[0] + arr[1]) / 2
		arr = append(arr, newIng)
		arr[0], arr[1] = 9999, 99999
		sort.Float64s(arr)
		if arr[1] == 9999 {
			break
		}
	}

	fmt.Println(arr[0])
}
