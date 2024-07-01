package main

import (
	"fmt"
)

func main() {
	N := read()
	A := readArray(N)

	for _, x := range A {
		if x%2 == 0 {
			if x%3 != 0 && x%5 != 0 {
				fmt.Println("DENIED")
				return
			}
		}
	}

	fmt.Println("APPROVED")
}

func read() int {
	var v int
	fmt.Scan(&v)
	return v
}

func readArray(length int) []int {
	result := make([]int, length)
	for i := 0; i < length; i++ {
		result[i] = read()
	}

	return result
}