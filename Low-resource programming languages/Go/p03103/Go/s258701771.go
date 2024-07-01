package main

import (
	"fmt"
	"sort"
)

type Pair struct{ A, B int }

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	pairs := make([]Pair, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&pairs[i].A, &pairs[i].B)
	}
	sort.Slice(pairs, func(i, j int) bool {
		return pairs[i].A < pairs[j].A
	})

	money := 0
	for i := 0; i < n; i++ {
		if m-pairs[i].B <= 0 {
			money += m * pairs[i].A
			break
		} else {
			money += pairs[i].A * pairs[i].B
			m -= pairs[i].B
		}
	}
	fmt.Println(money)
}
