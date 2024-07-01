package main

import (
	"fmt"
	"sort"
)


func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int,n )
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	sort.Sort( sort.Reverse(sort.IntSlice(a)))
	ans := 0
	// t := n -1 // 何回足せるか
	for i := 0; i < n; i++ {
		if i == 0 {
			continue
		}
		ans += a[i / 2]
		// lim := 2
		// if i == 0 {
		// 	lim = 1
		// }
		// for j := 0; j < lim; j++ {
		// 	if t > 0 {
		// 		ans += a[i]
		// 		t--
		// 	}
		// }
	}

	fmt.Println(ans)
}
