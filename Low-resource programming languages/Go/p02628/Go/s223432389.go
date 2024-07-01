package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	p := make([]int, N)
	for i := range p {
		fmt.Scan(&p[i])
	}
	sort.Ints(p)
	sum := 0
	for i := 0; i < K; i++ {
		sum += p[i]
	}
	fmt.Println(sum)

}
