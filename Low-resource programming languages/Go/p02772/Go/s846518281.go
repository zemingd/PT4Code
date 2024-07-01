package main

import (
	"fmt"
	"os"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	nums := scanIntSlice(n)
	for _, n := range nums {
		if n%2 == 0 && n%3 != 0 && n%5 != 0 {
			fmt.Println("DENIED")
			os.Exit(0)
		}
	}
	fmt.Println("APPROVED")
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
