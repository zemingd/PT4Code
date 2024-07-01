package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	arr1 := make([]int, n + 2)
	sum := 0
	for i := 1; i < n + 1; i++ {
		var tmp int
		fmt.Scan(&tmp)
		arr1[i] = tmp
		sum += abs(arr1[i - 1] - tmp)
	}
	sum += abs(arr1[n])
	for i := 1; i < n + 1; i++ {
		tmp := sum - abs(arr1[i] - arr1[i - 1]) - abs(arr1[i] - arr1[i + 1])
		tmp += abs(arr1[i - 1] - arr1[i + 1])
		fmt.Println(tmp)
	}
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}