package main

import (
	"fmt"
)

func main() {
	var n, m, q int
	fmt.Scan(&n, &m, &q)
	a := make([]int, q)
	b := make([]int, q)
	c := make([]int, q)
	d := make([]int, q)
	for i := 0; i < q; i++ {
		fmt.Scan(&a[i], &b[i], &c[i], &d[i])
	}
	result := 0
	for _, xs := range gen(n, m) {
		r := calc(xs, q, a, b, c, d)
		if r > result {
			result = r
		}
	}
	fmt.Println(result)
}

func gen(n int, m int) [][]int {
	result := make([][]int, 0, m)
	for i := 1; i <= m; i++ {
		result = append(result, []int{i})
	}
	for i := 2; i <= n; i++ {
		r := make([][]int, 0)
		for _, xs := range result {
			for i := xs[len(xs)-1]; i <= m; i++ {
				b := make([]int, 0, len(xs)+1)
				b = append(b, xs...)
				b = append(b, i)
				r = append(r, b)
			}
		}
		result = r
	}
	return result
}

func calc(xs []int, q int, a, b, c, d []int) (result int) {
	for i := 0; i < q; i++ {
		if xs[b[i]-1]-xs[a[i]-1] == c[i] {
			result += d[i]
		}
	}
	return result
}
