package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	rank := make([]int, 8+1)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		rank[checkRank(tmp)]++
	}
	sum := 0
	for i := 0; i < 8; i++ {
		if rank[i] > 0 {
			sum++
		}
	}
	minNum := int(math.Max(float64(1), float64(sum)))
	maxNum := int(math.Min(float64(8), float64(sum+rank[8])))
	fmt.Printf("%d %d\n", minNum, maxNum)

}

func checkRank(num int) int {
	if num >= 9*400 {
		return 8
	}
	return num / 400
}
