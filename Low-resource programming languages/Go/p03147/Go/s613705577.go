package main

import (
	"fmt"
)

func water(n int, i int, hArray []int, fArray []int) {
	for j := i; j < n; j++ {
		if fArray[j] < hArray[j] {
			fArray[j]++
		} else {
			break
		}
	}
}

func main() {
	var n int
	fmt.Scan(&n)

	hArray, fArray := make([]int, n), make([]int, n)
	for i := range hArray {
		fmt.Scan(&hArray[i])
		fArray[i] = 0
	}

	cnt := 0
	for i := range hArray {
		for fArray[i] < hArray[i] {
			water(n, i, hArray, fArray)
			cnt++
		}
	}
	fmt.Println(cnt)
}
