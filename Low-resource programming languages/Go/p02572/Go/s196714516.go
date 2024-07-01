package main

import (
	"fmt"
)

func main() {
	var n int
	var a int
	fmt.Scan(&n)
	sliceA := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		sliceA[i] = a
	}

	sumAll := 0
	flag := 1000000000 + 7
	for i := 0; i < n; i++ {
		sum := 0
		for j := i; j < n; j++ {
			if i == j {
				continue
			}
			sum += sliceA[i] * sliceA[j]
		}
		sumAll += sum
	}
	if sumAll < flag {
		fmt.Print(sumAll)
	} else {
		// fmt.Print(sumAll, "\n")
		fmt.Print(sumAll % flag)
	}

}
