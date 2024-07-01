package main

import (
	"fmt"
)

func main() {
	var n int
	var a int
	fmt.Scan(&n)
	sliceA := make([]int, n)
	sliceSum := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		sliceA[i] = a
	}

	// 累積和
	sumsum := 0
	for i := 0; i < n; i++ {
		sumsum += sliceA[i]
		sliceSum[i] = sumsum
	}

	sumAll := 0

	for i := 0; i < n; i++ {
		sumAll += sliceA[i] * (sliceSum[n-1] - sliceSum[i])
		sumAll = abc(sumAll)
	}
	fmt.Print(sumAll)

	// 計算量多い
	// for i := 0; i < n; i++ {
	// 	sum := 0
	// 	for j := i; j < n; j++ {
	// 		if i == j {
	// 			continue
	// 		}
	// 		sum += sliceA[i] * sliceA[j]
	// 	}
	// 	sumAll += sum
	// }
}

func abc(value int) int {
	flag := 1000000007
	ans := 0
	if value < flag {
		ans = value
	} else {
		ans = value % flag
	}
	return ans
}
