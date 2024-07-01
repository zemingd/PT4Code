package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	var f []int
	fmt.Scan(&n, &k)

	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		f = append(f, a)
	}

	sort.Slice(f, func(i, j int) bool {
		return f[i] < f[j]
	})
	var ret int
	for _, i := range f[:k] {
		ret += i
	}
	fmt.Println(ret)
}
