package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)

	as := make([]int, x)
	bs := make([]int, y)
	cs := make([]int, z)
	for i := 0; i < x; i++ {
		fmt.Scan(&as[i])
	}
	for i := 0; i < y; i++ {
		fmt.Scan(&bs[i])
	}
	for i := 0; i < z; i++ {
		fmt.Scan(&cs[i])
	}

	ab := make([]int, 0)
	for _, a := range as {
		for _, b := range bs {
			ab = append(ab, a+b)
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(ab)))
	ab = ab[0:min(len(ab), 3000)]

	abc := make([]int, 0)
	for _, v := range ab {
		for _, c := range cs {
			abc = append(abc, v+c)
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(abc)))

	for i := 0; i < k; i++ {
		fmt.Println(abc[i])
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
