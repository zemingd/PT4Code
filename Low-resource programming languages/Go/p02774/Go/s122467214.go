package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	a := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a[i])
	}

	res := make([]int, (n*(n-1))/2)

	cnt := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if i == j {
				continue
			}
			res[cnt] = a[i] * a[j]
			cnt++
		}
	}
	//   1 2 3 4
	// 1   2 3 4
	// 2 2   6 8
	// 3 3 6   12
	// 4 4 8 12

	//    -4 -2 3 3
	// -4
	// -2 8
	//  3 -12 -6
	//  3 -12 -6 9
	sort.Ints(res)
	// fmt.Println(res)
	fmt.Println(res[k-1])
}
