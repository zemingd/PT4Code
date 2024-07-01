package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	arr := []int{a, b, c}
	sort.Ints(arr)
	fmt.Println(10*arr[2] + arr[1] + arr[0])
}
