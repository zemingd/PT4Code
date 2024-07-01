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
	for i := 0; i < n-2; i++ {
		for j := i + 1; j < n-1; j++ {
			t := l[j+1:]
			sum := l[i] + l[j]
			w := sort.Search(len(t), func(i int) bool { return t[i] > sum })
			for k := 0; k < w; k++ {
				if l[i] < l[j]+t[k] && l[j] < t[k]+l[i] && t[k] < l[i]+l[j] {
					r++
				}
			}
		}
	}
	fmt.Println(r)
}
