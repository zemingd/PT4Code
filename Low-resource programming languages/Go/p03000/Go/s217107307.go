package main

import (
	"fmt"
)

func main() {
	var n, x int
	var l []int

	fmt.Scanf("%d %d", &n, &x)
	l = make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &l[i])
	}

	d := 0
	cnt := 0

	for ; (d <= x) && (cnt < n); cnt++ {
		d += l[cnt]
	}

	fmt.Print(cnt)
}
