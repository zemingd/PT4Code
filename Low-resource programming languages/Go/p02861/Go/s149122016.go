package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	n := make([]int, N)
	for i := 0; i < N; i++ {
		n[i] = i
	}
	x := make([]int, N)
	y := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&x[i], &y[i])
	}
	a := NextPermutation(n)
	var sum float64
	for i := 0; i < len(a); i++ {
		for j := 0; j < len(a[i])-1; j++ {
			f := a[i][j]
			t := a[i][j+1]
			sum += calc(x[f], y[f], x[t], y[t])
		}
	}
	fmt.Println(sum / float64(len(a)))

}
func calc(fx, fy, tx, ty int) float64 {
	w := math.Sqrt(math.Pow(float64(tx-fx), 2) + math.Pow(float64(ty-fy), 2))
	return w
}
func NextPermutation(x []int) [][]int {
	var p [][]int
	z := make([]int, len(x))
	copy(z, x)
	p = append(p, z)
	for i := 1; NextPermutationSub(sort.IntSlice(x)); i++ {
		y := make([]int, len(x))
		copy(y, x)
		p = append(p, y)
	}
	return p
}

func NextPermutationSub(x sort.Interface) bool {
	n := x.Len() - 1
	if n < 1 {
		return false
	}
	j := n - 1
	for ; !x.Less(j, j+1); j-- {
		if j == 0 {
			return false
		}
	}
	l := n
	for !x.Less(j, l) {
		l--
	}
	x.Swap(j, l)
	for k, l := j+1, n; k < l; {
		x.Swap(k, l)
		k++
		l--
	}
	return true
}
