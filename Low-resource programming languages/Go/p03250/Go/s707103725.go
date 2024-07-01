package main

import (
	"fmt"
	"sort"
)

type digs []int

func (d digs) Len() int {
	return len(d)
}

func (d digs) Swap(i, j int) {
	d[i], d[j] = d[j], d[i]
}

func (d digs) Less(i, j int) bool {
	return d[i] < d[j]
}

func main() {
	arr := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scanf("%d", &arr[i])
	}
	sort.Sort(digs(arr))

	ret := arr[2]*10 + arr[1] + arr[0]
	fmt.Println(ret)
}
