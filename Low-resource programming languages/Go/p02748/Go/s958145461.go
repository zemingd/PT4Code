package main

import (
	"fmt"
	"bufio"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)

	var a, b, m int
	fmt.Scanf("%d %d %d", &a, &b, &m)

	av := make([]int, a)
	bv := make([]int, b)

	N := 200000
	amin, bmin := N, N
	for i := 0; i < a; i++ {
		fmt.Fscan(r, &av[i])
		if amin > av[i] {
			amin = av[i]
		}
	}
	for i := 0; i < b; i++ {
		fmt.Fscan(r, &bv[i])
		if bmin > bv[i] {
			bmin = bv[i]
		}
	}

	res := amin + bmin
	for i := 0; i < m; i++ {
		var x, y, c int
		fmt.Fscan(r, &x, &y, &c)

		t := av[x - 1] + bv[y - 1] - c
		if t < res {
			res = t
		}
	}

	fmt.Println(res)
}
