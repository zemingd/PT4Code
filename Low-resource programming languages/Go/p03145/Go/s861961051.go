package main

import (
	"fmt"
	"sort"
)

func main() {
	arr := make([]int, 3)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	sort.Ints(arr)
	fmt.Println(arr[0] * arr[1] / 2)

}