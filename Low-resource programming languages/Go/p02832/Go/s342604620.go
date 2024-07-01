package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	bricks := scanIntSlice(n)

	count, target := 0, 1
	for _, b := range bricks {
		if b == target {
			target++
		} else {
			count++
		}
	}

	if target == 1 {
		fmt.Println("-1")
	} else {
		fmt.Printf("%d\n", count)
	}
}

func scanIntSlice(size int) []int {
	input := []int{}
	for i := 0; i < size; i++ {
		var in int
		fmt.Scanf("%d", &in)
		input = append(input, in)
	}
	return input
}
