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

func Ints2d(n_rows, n_cols int) [][]int {
	ints := make([][]int, n_rows)
	for i := 0; i < n_rows; i++ {
		ints[i] = make([]int, n_cols)
	}
	return ints
}

func main() {
	N := ReadInt(os.Stdin)
	A := ReadInts(os.Stdin, N)

	L := N
	values := map[int]bool{}
	var min int
	for i, v := range A {
		if i == 0 || v > min {
			min = v
		}
		values[v] = true
	}

	var v int
	for {
		for v1 := range values {
			for v2 := range values {
				v = v1 % v2
				if v > 0 {
					values[v] = true
					if v < min {
						min = v
					}
				}
			}
		}
		if L == len(values) {
			break
		}
		L = len(values)
	}

	fmt.Println(min)
}