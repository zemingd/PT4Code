package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	p := make([]int, n)
	for i := range p {
		fmt.Scan(&p[i])
	}

	sort.Ints(p)

	var sum int
	for i := 0; i < k; i++ {
		sum += p[i]
	}

	fmt.Println(sum)
}
