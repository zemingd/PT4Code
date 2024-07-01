package main

import (
	"fmt"
)

func main() {
	n := 0
	fmt.Scan(&n)
	vals := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&vals[i])
	}

	min, max := vals[0], -2147483648
	for _, val := range vals {
		if max < val-min {
			fmt.Println(val, " - ", min, " = ", val-min)
			max = val - min
		}
		if min > val {
			min = val
		}
	}

	fmt.Println(max)
}

