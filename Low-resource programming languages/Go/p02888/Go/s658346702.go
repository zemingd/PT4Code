package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, r int
	fmt.Scan(&n)
	l := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&l[i])
	}
	sort.Sort(sort.IntSlice(l))
	fmt.Println(l)
	for i := 0; i < n-2; i++ {
		for j := i + 1; j < n-1; j++ {
			for k := j + 1; k < n && l[k] < l[i]+l[j]; k++ {
				if l[i] < l[j]+l[k] && l[j] < l[k]+l[i] {
					r++
				}
			}
		}
	}
	fmt.Println(r)
}
