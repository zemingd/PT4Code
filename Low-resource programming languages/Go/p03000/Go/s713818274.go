package main

import (
	"fmt"
)

func main() {
	var n, x int
	fmt.Scanf("%d %d", &n, &x)

	ls := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&ls[i])
	}

	d := 0
	cnt := 1
	for _, l := range ls {
		d += l
		if d <= x {
			cnt++
		}
	}

	fmt.Print(cnt)

}
