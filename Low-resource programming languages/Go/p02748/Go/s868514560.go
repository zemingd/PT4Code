package main

import (
	"fmt"
)

func main() {
	var A, B, M int

	fmt.Scan(&A, &B, &M)
	alist := make([]int, A)
	blist := make([]int, B)

	minA := 0
	minB := 0

	var n int

	for i := 0; i < A; i++ {
		fmt.Scan(&n)
		alist[i] = n
		if minA > n || minA == 0 {
			minA = n
		}
	}

	for i := 0; i < B; i++ {
		fmt.Scan(&n)
		blist[i] = n
		if minB > n || minB == 0 {
			minB = n
		}
	}

	res := minA + minB
	var x, y, z int
	for i := 0; i < M; i++ {
		fmt.Scan(&x, &y, &z)

		if res > alist[x-1]+blist[y-1]-z {
			res = alist[x-1] + blist[y-1] - z
		}
	}

	fmt.Println(res)
}
