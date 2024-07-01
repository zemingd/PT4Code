package main

import (
	"fmt"
)

func calcMin(weightList []int, n int) int {
	min := 100001
	for i := 1; i < n; i++ {
		var rightSum, leftSum int
		for _, v := range weightList[:i] {
			rightSum = rightSum + v
		}
		for _, v := range weightList[i:] {
			leftSum = leftSum + v
		}

		value := rightSum - leftSum
		if value < 0 {
			value = -value
		}

		if value < min {
			min = value
		}
	}
	return min
}

func main() {
	var n int
	fmt.Scanf("%d", &n)

	var weightList []int
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		weightList = append(weightList, tmp)
	}

	fmt.Println(calcMin(weightList, n))
}
