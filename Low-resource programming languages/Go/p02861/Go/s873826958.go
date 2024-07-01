package main

import (
	"fmt"
	"math"
	"sort"
)

func NextPermutation(x sort.Interface) bool {
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

func main() {
	var n int
	fmt.Scan(&n)
	x := make([]int, n)
	y := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&x[i], &y[i])
	}
	var a []int
	for i := 0; i < n; i++ {
		a = append(a, i)
	}
	sort.Ints(a)

	var sum float64
	var cnt int
	for { // do-while NextPermutation
		cnt++
		for i := 1; i < len(a); i++ {
			s, t := a[i-1], a[i]
			v := math.Pow(float64(x[s]-x[t]), 2)
			v += math.Pow(float64(y[s]-y[t]), 2)
			v = math.Sqrt(v)
			sum += v
		}
		if !NextPermutation(sort.IntSlice(a)) {
			break
		}
	}
	fmt.Println(sum / float64(cnt))
}
