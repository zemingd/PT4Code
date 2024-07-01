package main

import (
	"fmt"
	"sort"
)

func minimum0(xs []int) int {
	n := xs[0]
	for _, x := range xs {
		if n == 0 {
			n = x
		} else if x < n && 0 < x {
			n = x
		}
	}
	return n
}

func main() {
	var n int
	fmt.Scanf("%d\n", &n)

	as := make([]int, n)

	for i := range as {
		fmt.Scanf("%d", &as[i])
	}

	sort.Ints(as)

	xs := make([]int, n)
	xs[0] = as[0]

	for i := range as {
		if i == 0 {
			continue
		}
		xs[i] = as[i] % as[0]
	}

	z := minimum0(xs)
L:
	for i := range as {
		xs[i] = as[i] % z
	}
	z0 := minimum0(xs)
	if 0 < z0 && z0 < z {
		z = z0
		goto L
	}
	if z0 == 0 {
		z0 = z
	}

	fmt.Println(z0)
}