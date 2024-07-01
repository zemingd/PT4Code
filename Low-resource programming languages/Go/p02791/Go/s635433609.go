package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}

	first := a[0]
	ends := a[len(a)-1]

	sort.Ints(a)

	var cnt int

	if first == a[len(a)-1] {
		cnt = 1
	} else if ends == a[len(a)-1] {
		// fmt.Println(1)
		cnt = 1

	}

	for i := 0; i < N; i++ {
		if a[i] == first {
			break
		}
		cnt++
	}
	fmt.Println(cnt)

}
