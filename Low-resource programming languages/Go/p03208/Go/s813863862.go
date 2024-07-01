package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		arr[i] = tmp
	}
	sort.Sort(sort.IntSlice(arr))
	mn := math.MaxInt32
	for i := 0; i < n - k + 1; i++ {
		tmp := arr[i + k - 1] - arr[i]
		if tmp < mn {
			mn = tmp
		}
	}
	fmt.Println(mn)
}