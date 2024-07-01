package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	dic := map[int]int{}
	for range make([]struct{}, n) {
		var a, b int
		fmt.Scan(&a, &b)
		dic[a] += b
	}

	seq := []int{}
	for key := range dic {
		seq = append(seq, key)
	}
	sort.Ints(seq)

	var ans int
	for k > 0 {
		ans = seq[0]
		k -= dic[seq[0]]
		seq = seq[1:]
	}

	fmt.Println(ans)
}
