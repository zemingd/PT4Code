package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K, a, b, wc, r int
	fmt.Scan(&N, &K)
	m := map[int]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&a, &b)
		m[a] += b
	}
	var arr []int
	for k, _ := range m {
		arr = append(arr, k)
	}
	sort.Sort(sort.IntSlice(arr))
	for i := 0; i < len(arr); i++ {
		wc += m[arr[i]]
		if K <= wc {
			r = arr[i]
			break
		}
	}
	fmt.Println(r)
}