package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	l := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&l[i])
	}

	com := Combination(l, 3)
	kind := 0
	for i := 0; i < len(com); i++ {
		a := com[i][0]
		b := com[i][1]
		c := com[i][2]
		if a < b+c && b < c+a && c < a+b {
			kind++
		}
	}
	fmt.Println(kind)
}

func Combination(nums []int, k int) [][]int {
	size := len(nums)
	result := make([][]int, CombinationCount(len(nums), k))
	bi := (1 << uint(k)) - 1
	max := 1 << uint(size)
	idx := 0

	for bi < max {
		flags := bi
		s := make([]int, 0)
		for _, n := range nums {
			if flags%2 != 0 {
				s = append(s, n)
			}
			flags /= 2
		}
		result[idx] = s
		idx++
		bi = Combination2NextIndex(bi)
	}
	return result
}

func Combination2NextIndex(n int) int {
	smallest := n & -n
	ripple := n + smallest
	newSmallest := ripple & -ripple
	ones := ((newSmallest / smallest) >> 1) - 1
	return ripple | ones
}

func CombinationCount(n, m int) int {
	return Fact(n) / (Fact(n-m) * Fact(m))
}

func Fact(n int) int {
	if n == 0 {
		return 1
	} else {
		return n * Fact(n-1)
	}
}
