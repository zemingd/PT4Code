package main

import (
	"fmt"
	"os"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	tasks := scanIntSlice(m)

	for _, t := range tasks {
		n -= t
		if n < 0 {
			fmt.Println("-1")
			os.Exit(0)
		}
	}

	fmt.Printf("%d\n", n)
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
