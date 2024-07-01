package main

import (
	"fmt"
	"sort"
)

func main() {
	var p, q, r int
	fmt.Scanf("%d %d %d\n", &p, &q, &r)

	a := []int{p, q, r}
	sort.Ints(a)
	ans := 0
	for i := 0; i < len(a)-1; i++ {
		ans += a[i]
	}
	fmt.Println(ans)
}
