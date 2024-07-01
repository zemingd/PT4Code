package main

import (
	"fmt"
	"sort"
)

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)

	m := make(map[int]int)
	for i := A; i < min(A+K, B); i++ {
		m[i] = i
	}
	for i := max(B-(K-1), A); i <= B; i++ {
		m[i] = i
	}

	var n []int
	for _, v := range m {
		n = append(n, v)
	}
	sort.Ints(n)
	for _, v := range n {
		fmt.Println(v)
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
