package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, l, out int
	fmt.Scanf("%d", &n)
	L := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &l)
		L[i] = l
	}
	sort.Sort(sort.IntSlice(L))
	for i := 0; i < n; i++ {
		for ii := i + 1; ii < n; ii++ {
			for iii := ii + 1; L[iii] < L[i]+L[ii]; iii++ {
				out++
			}
		}
	}
	fmt.Println(out)
}

