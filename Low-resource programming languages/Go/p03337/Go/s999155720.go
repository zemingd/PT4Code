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
	var res float64
	for i := 0; i < len(nums); i++ {
		res = math.Max(res, float64(nums[i]))
	}
	return int(res)
}
