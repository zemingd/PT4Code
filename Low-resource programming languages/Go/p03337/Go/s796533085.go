package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	fmt.Println(max(A+B, A-B, A*B))
	return

}

func max(nums ...int) int {
	res := math.MinInt32
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return int(res)
}
