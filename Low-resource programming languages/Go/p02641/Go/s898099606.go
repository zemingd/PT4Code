package main

import (
	"fmt"
	"os"
)

func main() {
	var x, n int
	fmt.Scanf("%d %d", &x, &n)
	ps := scanIntSlice(n)

	s := map[int]struct{}{}
	for _, p := range ps {
		s[p] = struct{}{}
	}

	for i := 0; i <= 100; i++ {
		if _, ok := s[x-i]; !ok {
			fmt.Printf("%d\n", x-i)
			os.Exit(0)
		} else if _, ok := s[x+i]; !ok {
			fmt.Printf("%d\n", x+i)
			os.Exit(0)
		}
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
