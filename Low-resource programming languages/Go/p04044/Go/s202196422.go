package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	var l int
	var ans string

	fmt.Scanf("%d %d", &n, &l)

	ary := make([]string, n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%s", &ary[i])
	}

	sort.Sort(sort.StringSlice(ary))
	for _, v := range ary {
		ans += v
	}
	fmt.Println(ans)
}
