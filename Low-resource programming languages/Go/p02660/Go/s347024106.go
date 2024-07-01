package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	factors := factorize(n)

	count := 0
	for _, pair := range factors {
		i := 1
		for pair[1] >= i {
			pair[1] -= i
			i++
			count++
		}
	}

	fmt.Printf("%d\n", count)
}

func factorize(n int) [][]int {
	factors := [][]int{}
	for f := 2; f*f <= n; f++ {
		i := 0
		for n%f == 0 {
			n = n / f
			i++
		}
		if i > 0 {
			factors = append(factors, []int{f, i})
		}
	}
	if n > 1 {
		factors = append(factors, []int{n, 1})
	}
	return factors
}
