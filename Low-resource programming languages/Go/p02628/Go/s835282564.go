package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k, sum int
	fmt.Scan(&n, &k)

	var p = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}
	sort.Ints(p)

	for i := 0; i < k; i++ {
		sum += p[i]
	}
	fmt.Println(sum)

}
