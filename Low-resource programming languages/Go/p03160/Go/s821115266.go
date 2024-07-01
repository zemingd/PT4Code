package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	stones := make([]int, n)
	for i := 0; i < n; i++ {
		var stone int
		fmt.Scanf("%d", &stone)
		stones[i] = stone
	}

	fmt.Println(frogDP(n, stones))
}

func frogDP(n int, stones []int) int {
	if n <= 2 {
		return 0
	}

	result := make([]int, n)
	result[0] = 0
	result[1] = absoluteValue(stones[0] - stones[1])

	for j := 2; j < n; j++ {
		i := j - 1
		i2 := j - 2
		result[j] = min(
			absoluteValue(stones[i]-stones[j])+result[i],
			absoluteValue(stones[i2]-stones[j])+result[i2],
		)
	}
	return result[n-1]
}
func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func absoluteValue(n int) int {
	if n > 0 {
		return n
	}
	return -n
}