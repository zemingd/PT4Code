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
	bs := make(map[int]int)
	for i := 0; i < n; i++ {
		fmt.Scan(&a, &b)
		if !op[a] {
			op[a] = true
		}
		if !op[b] {
			op[b] = false
		}
		bs[b]++
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
		}

		h -= x * bs[x]
		ans += bs[x]
		if h <= 0 {
			break
		}
	}
	fmt.Println(ans)
}
