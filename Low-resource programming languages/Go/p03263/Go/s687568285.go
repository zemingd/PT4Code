package main

import (
	"fmt"
)

type Operation struct {
	y1, x1, y2, x2 int
}

func main() {
	var h, w int
	fmt.Scan(&h, &w)

	ops := make([]Operation, 500 * 500)
	opsInd := 0
	a := make([][]int, h)
	for i := 0; i < h; i++ {
		a[i] = make([]int, w)
		for j := 0; j < w; j++ {
			fmt.Scan(&a[i][j])
			if j > 0 && a[i][j-1] % 2 == 1 {
				a[i][j-1]--
				a[i][j]++
				ops[opsInd] = Operation{i + 1, j, i + 1, j + 1}
				opsInd++
			}
		}
	}

	for i := 1; i < h; i++ {
		if a[i-1][w-1] % 2 == 1 {
			a[i-1][w-1]--
			a[i][w-1]++
			ops[opsInd] = Operation{i, w, i + 1, w}
			opsInd++
		}
	}

	ops = ops[:opsInd]
	fmt.Println(opsInd)
	for _, op := range ops {
		fmt.Println(op)
	}
}