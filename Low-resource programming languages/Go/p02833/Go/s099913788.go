package main

import (
	"fmt"
	"math"
)

func main() {
	var (
		n int
	)
	fmt.Scan(&n)
	var count int
	if n%2 != 0 {
		count = (n + 1) / 2
	} else {
		count = n / 2
	}
	result := 1
	var numlis []int
	for i := 0; i <= count-1; i++ {
		numlis = append(numlis, n-2*i)
	}
	for i := 0; i < len(numlis); i++ {
		result = result * numlis[i]
	}

	for i := 1; i < 18; i++ {
		if result%int(math.Pow(10, float64(i))) != 0 {
			fmt.Println(i - 1)
			break
		}
	}
}
