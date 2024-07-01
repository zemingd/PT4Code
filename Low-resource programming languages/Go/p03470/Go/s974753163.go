package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, a, output int
	fmt.Scanf("%d", &n)
	var tmp []int
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a)
		tmp = append(tmp, a)
	}
	sort.Sort(sort.IntSlice(tmp))
	output = 1
	for i := 1; i < n; i++ {
		if tmp[i] > tmp[i-1] {
			output++
		}
	}
	fmt.Println(output)
}
