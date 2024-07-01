package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)

	sunuke := map[int]struct{}{}
	for i := 0; i < k; i++ {
		var d int
		fmt.Scanf("%d", &d)
		as := scanIntSlice(d)
		for _, a := range as {
			sunuke[a] = struct{}{}
		}
	}

	fmt.Printf("%d\n", n-len(sunuke))
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
