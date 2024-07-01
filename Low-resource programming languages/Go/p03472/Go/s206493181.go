package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, h int
	fmt.Scan(&n, &h)

	var a, b int
	op := make(map[int]bool)
	for i := 0; i < n; i++ {
		fmt.Scan(&a, &b)
		if !op[a] {
			op[a] = true
		}
		if !op[b] {
			op[b] = false
		}
	}
	d := make([]int, 0)
	for k := range op {
		d = append(d, k)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(d)))

	ans := 0
	for i := 0; i < len(d); i++ {
		x := d[i]
		if op[x] {
			ans += (h + x - 1) / x
			break
		} else {
			h -= x
			ans++
		}
	}
	fmt.Println(ans)
}
