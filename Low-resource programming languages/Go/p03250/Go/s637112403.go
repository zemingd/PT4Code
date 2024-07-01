package main

import (
	"fmt"
	"sort"
)

func main() {
	arr := make([]int, 3)
	fmt.Scan(&arr[0], &arr[1], &arr[2])
	sort.Ints(arr)
	fmt.Println(arr[2]*10 + arr[1] + arr[0])
}
