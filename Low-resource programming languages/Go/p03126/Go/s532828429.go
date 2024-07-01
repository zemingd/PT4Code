package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	var DupList []int

	for i := 0; i < N; i++ {

		var K int
		fmt.Scan(&K)
		numList := make([]int, K)
		for i := 0; i < K; i++ {
			fmt.Scan(&numList[i])
		}
		if i == 0 {
			DupList = numList
		}
		DupList = DuplicatedList(DupList, numList)
	}

	fmt.Println(len(DupList))
	return
}

func DuplicatedList(a []int, b []int) []int {
	var resultList []int
	for _, n := range a {
		if Contains(b, n) {
			resultList = append(resultList, n)
		}
	}
	return resultList
}

func Contains(a []int, x int) bool {
	for _, n := range a {
		if x == n {
			return true
		}
	}
	return false
}
