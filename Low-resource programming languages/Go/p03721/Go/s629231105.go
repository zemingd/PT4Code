package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	cnt := make([]int, 100001)
	var a, b int
	for i := 0; i < n; i++ {
		fmt.Scan(&a, &b)
		cnt[a] += b
	}

	for i := 0; i <= 100000; i++ {
		if k <= cnt[i] {
			fmt.Println(i)
			return
		}
		k -= cnt[i]
	}
}
