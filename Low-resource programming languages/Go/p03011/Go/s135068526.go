package main

import (
	"fmt"
	"sort"
)

func main() {
	a := make([]int, 3)
	fmt.Scan(&a[0], &a[1], &a[2])
	sort.Sort(sort.IntSlice(a))
	fmt.Printf("%#v\n", a[0]+a[1])
}
