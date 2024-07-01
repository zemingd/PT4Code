package main

import (
	"fmt"
	"math"
	"sort"
)

type Ints []int

func (i Ints) Len() int {
	return len(i)
}

func (i Ints) Swap(j, k int) {
	i[j], i[k] = i[k], i[j]
}

func (i Ints) Less(j, k int) bool {
	return i[j] > i[k]
}

func main() {
	var A Ints
	A = make([]int, 3)
	fmt.Scan(&A[0], &A[1], &A[2])

	sort.Sort(A)

	answer := 0.0
	answer += math.Abs(float64(A[0] - A[1]))
	answer += math.Abs(float64(A[1] - A[2]))

	fmt.Println(int(answer))
}
