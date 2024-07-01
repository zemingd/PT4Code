package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	l := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&l[i])
	}

	sort.Ints(l)

	ans := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			for k := j + 1; k < n; k++ {
				a, b, c := l[i], l[j], l[k]
				if a < b+c && b < c+a && c < a+b {
					ans++
				} else {
					break
				}
			}
		}
	}

	fmt.Println(ans)
}
