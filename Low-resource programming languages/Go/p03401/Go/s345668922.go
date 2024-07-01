package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n + 2)
	sum := 0
	for i := 1; i < n + 1; i++ {
		var tmp int
		fmt.Scan(&tmp)
		arr[i] = tmp
		sum += abs(arr[i] - arr[i - 1])
	}
	sum += abs(arr[n])
	for i := 1; i < n + 1; i++ {
		tmp := sum
		tmp -= abs(arr[i] - arr[i - 1]) + abs(arr[i] - arr[i + 1])
		tmp += abs(arr[i - 1] - arr[i + 1])
		fmt.Println(tmp)
	}
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}