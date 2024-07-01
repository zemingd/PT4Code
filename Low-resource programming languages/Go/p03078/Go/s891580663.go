package main

import (
	"fmt"
	"math"
	"sort"
)

type Array []int64

func (a Array) Len() int {
	return len(a)
}

func (a Array) Less(i, j int) bool {
	return a[i] < a[j]
}

func (a Array) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func main() {

	var (
		x int
		y int
		z int
		k int
	)

	fmt.Scan(&x, &y, &z, &k)

	a := make([]int64, x)
	b := make([]int64, y)
	c := make([]int64, z)

	for i := 0; i < x; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < y; i++ {
		fmt.Scan(&b[i])
	}
	for i := 0; i < z; i++ {
		fmt.Scan(&c[i])
	}

	ab := make(Array, x*y)

	for i := 0; i < x; i++ {
		for j := 0; j < y; j++ {
			ab = append(ab, a[i]+b[j])
		}
	}
	sort.Sort(sort.Reverse(ab))

	var abc Array
	for i := 0; i < int(math.Min(float64(3000), float64(len(ab)))); i++ {
		for j := 0; j < z; j++ {
			abc = append(abc, ab[i]+c[j])
		}
	}

	sort.Sort(sort.Reverse(abc))

	for i := 0; i < k; i++ {
		fmt.Println(abc[i])
	}
}
