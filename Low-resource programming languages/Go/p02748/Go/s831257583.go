package main

import (
	"fmt"
)

func main() {
	var A, B, M int
	var ap [100000]int
	var bp [100000]int
	var x [100000]int
	var y [100000]int
	var c [100000]int
	// var P int
	// var buf [200000]byte
	// var pos, len int

	fmt.Scan(&A, &B, &M)
	for i := 0; i < A; i++ {
		fmt.Scan(&ap[i])
	}
	for i := 0; i < B; i++ {
		fmt.Scan(&bp[i])
	}
	for i := 0; i < M; i++ {
		fmt.Scan(&x[i], &y[i], &c[i])
	}
	// fmt.Printf("c2 %d\n", c[0])

	min := 1000000000
	for k := 0; k < M; k++ {
		tmp := ap[x[k]-1] + bp[y[k]-1] - c[k]
		if min > tmp {
			min = tmp
		}
	}
	amin := 10000000
	bmin := 10000000
	for i := 0; i < A; i++ {
		if amin > ap[i] {
			amin = ap[i]
		}
	}
	for i := 0; i < B; i++ {
		if bmin > bp[i] {
			bmin = bp[i]
		}
	}
	if min > amin+bmin {
		min = amin + bmin
	}

	fmt.Println(min)
}
