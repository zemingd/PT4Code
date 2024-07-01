package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		arr[i] = tmp
	}
	sum := 0
	for _, k := range arr {
		sum += k - 1
	}
	fmt.Println(sum)
}