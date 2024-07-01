package main

import (
	"fmt"
	"sort"
)

func main() {
	var arr []int
	var a int
	for i := 0; i < 3; i++ {
		fmt.Scanf("%d", &a)
		arr = append(arr, a)
	}
	sort.Ints(arr)
	fmt.Print(arr[1] * arr[2])
}