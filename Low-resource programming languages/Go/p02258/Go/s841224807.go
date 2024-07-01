package main

import (
	"fmt"
)

func main() {
	n := 0
	fmt.Scan(&n)
	val := 0
	fmt.Scan(&val)
	min, max := val, -2147483648
	for i := 1; i < n; i++ {
		fmt.Scan(&val)
		if diff := val - min; max < diff {
			max = diff
		}
		if min > val {
			min = val
		}
	}
	fmt.Println(max)
}

