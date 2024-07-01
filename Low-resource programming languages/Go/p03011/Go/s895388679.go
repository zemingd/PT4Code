package main

import (
	"fmt"
	"sort"
)

func main() {
	var p, q, r int
	fmt.Scan(&p, &q, &r)
	arr := []int{p, q, r}
	sort.Ints(arr)
	fmt.Println(arr[0] + arr[1])
}