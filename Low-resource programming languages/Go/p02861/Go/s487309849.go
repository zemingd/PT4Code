package main

import (
	"fmt"
	"math"
)

var indices = [][]int{}

func main() {
	var N int
	fmt.Scan(&N)
	x := make([]int, N)
	y := make([]int, N)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&x[i], &y[i])
		a[i] = i
	}

	perm([]int{}, a)

	sum := 0.0
	for i := 0; i < len(indices); i++ {
		idx := indices[i]
		for k := 0; k < N-1; k++ {
			k1 := idx[k]
			k2 := idx[k+1]
			tx := x[k1] - x[k2]
			ty := y[k1] - y[k2]
			t := math.Sqrt(float64(tx*tx + ty*ty))
			sum += t
		}
	}

	fmt.Println(sum / float64(len(indices)))
}

func perm(head []int, rest []int) {
	if len(rest) == 0 {
		a := make([]int, len(head))
		copy(a, head)
		indices = append(indices, a)
	} else {
		for i, v := range rest {
			restx := make([]int, len(rest))
			copy(restx, rest)
			restx = append(restx[:i], restx[i+1:]...)
			headx := append(head, v)
			perm(headx, restx)
		}
	}
}
