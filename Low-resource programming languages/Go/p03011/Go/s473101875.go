package main

import (
	"fmt"
	"sort"
)

func main() {
	var p,q,r int
	fmt.Scan(&p, &q,&r)

	ds := make([]int,3)
	ds[0] = p
	ds[1] = q
	ds[2] = r

	sort.IntSlice(ds).Sort()
	fmt.Println(ds[0] + ds[1])
}