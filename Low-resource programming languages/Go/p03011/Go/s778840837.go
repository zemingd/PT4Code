package main

import (
	"fmt"
	"sort"
)

func main() {
	var p, q, r int
	fmt.Scan(&p, &q, &r)

	tmp := []int{p, q, r}
	sort.Sort(sort.IntSlice(tmp))

	fmt.Println(tmp[0] + tmp[1])
}
