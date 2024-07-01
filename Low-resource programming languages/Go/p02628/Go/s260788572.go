package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k, ans int
	fmt.Scan(&n, &k)
	p := make([]int, n)
	for i := range p {
		fmt.Scan(&p[i])
	}
	sort.Ints(p)
	for i := 0; i < k; i++ {
		ans += p[i]
	}
	fmt.Println(ans)
}
