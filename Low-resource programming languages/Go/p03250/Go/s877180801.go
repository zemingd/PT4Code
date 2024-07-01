package main

import (
	"fmt"
	"sort"
)

func main() {
	arr := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scanf("%d", &arr[i])
	}
	sort.Slice(arr, func(i, j int) bool {
		return arr[i] < arr[j]
	})

	ret := arr[2]*10 + arr[1] + arr[0]
	fmt.Println(ret)
}
