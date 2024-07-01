package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	x := make([]int, n)
	y := make([]int, n)
	o := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&x[i], &y[i])
		o[i] = i
	}

	var sum float64
	var cnt int
	for {
		var dist float64
		for i := 1; i < n; i++ {
			dx := x[o[i-1]] - x[o[i]]
			dy := y[o[i-1]] - y[o[i]]
			dist += math.Sqrt(float64(dx*dx) + float64(dy*dy))
		}
		sum += dist
		cnt++

		if !nextPermutation(sort.IntSlice(o)) {
			break
		}
	}
	fmt.Println(sum / float64(cnt))
}

func nextPermutation(x sort.Interface) bool {
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
