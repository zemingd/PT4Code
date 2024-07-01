package main

import (
	"fmt"
	"sort"
)

func main() {
	var (
		h, n, a int
		hissatu []int
		ok bool
	)
	fmt.Scan(&h, &n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		hissatu = append(hissatu, a)
	}

	sort.Sort(sort.Reverse(sort.IntSlice(hissatu)))

	for _, j := range hissatu {
		h -= j
		if h < 0 {
			ok = true
		}
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
