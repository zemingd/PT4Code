package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	cards := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&cards[i])
	}

	for i := 0; i < m; i++ {
		var b, c int
		fmt.Scan(&b, &c)

		for j := 0; j < b; j++ {
			cards = append(cards, c)
		}
	}

	sort.Sort(sort.Reverse(sort.IntSlice(cards)))

	var sum int
	for i := 0; i < n; i++ {
		sum += cards[i]
	}

	fmt.Println(sum)
}
