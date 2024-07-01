package main

import (
	"fmt"
	"sort"
)

func main() {
	n, m := 0, 0
	_, _ = fmt.Scan(&n, &m)
	memo := make(map[int]int)
	keys := make([]int, 0)
	for i := 0; i < n; i++ {
		a, b := 0, 0
		_, _ = fmt.Scan(&a, &b)
		val, ok := memo[a]
		if ok {
			memo[a] = val + b
		} else {
			memo[a] = b
			keys = append(keys, a)
		}
	}
	sort.Sort(sort.IntSlice(keys))
	amount := 0
	count := 0
	key := 0
	for _, k := range keys {
		key = k
		amount += memo[k] * k
		count += memo[k]
		if count >= m {
			break
		}
	}
	fmt.Println(amount - ((count - m) * key))
}