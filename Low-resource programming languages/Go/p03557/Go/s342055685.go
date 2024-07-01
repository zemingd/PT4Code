package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	b := make([]int, N)
	c := make([]int, N)
	aw := make([]int, 100010)
	bw := make([]int, 100010)
	cw := make([]int, 100010)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&b[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&c[i])
	}
	sort.Sort(sort.IntSlice(a))
	sort.Sort(sort.IntSlice(b))
	sort.Sort(sort.IntSlice(c))
	for i := 0; i < N; i++ {
		aw[a[i]]++
		bw[b[i]]++
		cw[c[i]]++
	}
	for i := 1; i < len(aw); i++ {
		aw[i] += aw[i-1]
		bw[i] += bw[i-1]
		cw[i] += cw[i-1]
	}
	r := 0
	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			if b[j] <= a[i] {
				continue
			}
			for k := 0; k < N; k++ {
				if c[k] <= b[j] {
					continue
				}
				ct := N - cw[b[j]]
				r += ct
				break
			}
		}
	}
	fmt.Println(r)

}