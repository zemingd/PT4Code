package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	mp := make(map[int]int)
	for i := 0; i < n; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		mp[a] = mp[a] + b
	}
	arr := make([]int, 0)
	for k := range mp {
		arr = append(arr, k)
	}
	sort.Sort(sort.IntSlice(arr))
	ans := 0
	for i, limit := 0, 0; i < len(arr) && limit < k; limit, i = limit + mp[arr[i]], i + 1 {
		ans = arr[i]
	}
	fmt.Println(ans)
}