package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &k)

	p := make([]int, n)
	for i := 0; i < len(p); i++ {
		fmt.Scanf("%d", &p[i])
	}
	sort.Ints(p)

	var ans int
	for i := 0; i < k; i++ {
		ans = ans + p[i]
	}

	fmt.Println(ans)
}
