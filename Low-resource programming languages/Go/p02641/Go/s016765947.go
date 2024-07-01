package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, n int
	fmt.Scan(&x, &n)

	if n == 0 {
		fmt.Println(x)
		return
	}

	var p []int
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		p = append(p, a)
	}
	sort.Ints(p)

	point := sliceIndex(p, x)

	for i := 0; ; i++ {
		flag := sliceIndex(p, p[point]-i)
		if flag == -1 {
			fmt.Println(x - i)
			return
		}
		flag = sliceIndex(p, p[point]+i)
		if flag == -1 {
			fmt.Println(x + i)
			return
		}
	}
}

func sliceIndex(a []int, b int) int {
	for i, e := range a {
		if e == b {
			return i
		}
	}
	return -1
}
