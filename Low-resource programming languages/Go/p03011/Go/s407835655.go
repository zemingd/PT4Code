package main

import (
	"fmt"
	"sort"
)

func main() {
	P := make([]int, 3)
	fmt.Scan(&P[0], &P[1], &P[2])
	sort.Ints(P)

	fmt.Println(P[0] + P[1])
}
