package main

import (
	"fmt"
	"os"
)

func ReadInt(f *os.File) int {
	var n int
	fmt.Fscanf(f, "%d", &n)
	return n
}

func ReadInts(f *os.File, n int) []int {
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscanf(f, "%d", &nums[i])
	}
	return nums
}

func main() {
	N := ReadInt(os.Stdin)
	M := ReadInt(os.Stdin)

	likes := make([]int, M)

	for i := 0; i < N; i++ {
		k := ReadInt(os.Stdin)
		for _, j := range ReadInts(os.Stdin, k) {
			likes[j-1]++
		}
	}

	c := 0
	for _, v := range likes {
		if v == N {
			c++
		}
	}
	fmt.Println(c)
}