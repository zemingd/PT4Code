package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	ps := make([]int,n)
	for i:= 0; i < n; i++ {
		var p int
		fmt.Scan(&p)
		ps[i] = p
	}

	count := 0
	for i := 1; i < n - 1; i++ {
		tmp := make([]int,3)
		tmp[0] = ps[i - 1]
		tmp[1] = ps[i]
		tmp[2] = ps[i + 1]

		sort.IntSlice(tmp).Sort()
		if tmp[1] == ps[i] {
			count++
		}
	}
	fmt.Println(count)
}