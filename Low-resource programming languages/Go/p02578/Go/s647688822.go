package main

import (
	"fmt"
)

type height struct {
	human int
	step  int
}

func (h height) Sum() int {
	return h.human + h.step
}

func main() {
	var N int
	fmt.Scan(&N)

	A := make([]height, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&A[i].human)
	}

	sum, tmp := 0, 0
	for i := 0; i < N-1; i++ {
		if A[i+1].human >= A[i].Sum() {
			continue
		}
		tmp = A[i].Sum() - A[i+1].human
		A[i+1].step = tmp
		sum += tmp
	}

	fmt.Println(sum)

	// A[i+1].Sum() >= A[i].Sum()
}
