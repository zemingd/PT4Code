package main

import (
	"fmt"
	"sort"
)

type myInt64 []int64

func (a myInt64) Len() int {
	return len(a)
}

func (a myInt64) Less(i, j int) bool {
	return a[i] > a[j]
}

func (a myInt64) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)
	a := make([]int64, x)
	b := make([]int64, y)
	c := make([]int64, z)
	for i := range a {
		fmt.Scan(&a[i])
	}
	for i := range b {
		fmt.Scan(&b[i])
	}
	for i := range c {
		fmt.Scan(&c[i])
	}

	sum := make([]int64, x*y)
	// a, bの組み合わせを考える
	for i := 0; i < x; i++ {
		for j := 0; j < y; j++ {
			sum[i*y+j] = a[i] + b[j]
		}
	}
	sort.Slice(sum, func(i, j int) bool { return sum[i] > sum[j] })
	sort.Slice(c, func(i, j int) bool { return c[i] > c[j] })

	// sum[0:k], c[0:z]の組み合わせを考える
	ans := make([]int64, k*z)
	iMax := min(k, x*y)
	for i := 0; i < iMax; i++ {
		for j := 0; j < z; j++ {
			ans[i*z+j] = sum[i] + c[j]
		}
	}
	sort.Slice(ans, func(i, j int) bool { return ans[i] > ans[j] })

	for _, v := range ans[:k] {
		fmt.Println(v)
	}
}
