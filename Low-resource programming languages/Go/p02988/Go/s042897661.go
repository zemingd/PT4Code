package main

import (
	"fmt"
)

func main() {
	var i int
	fmt.Scan(&i)

	arr := make([]int, 0, i)
	for j := 0; j < i; j++ {
		var k int
		fmt.Scan(&k)
		arr = append(arr, k)
	}

	count := 0

	for j := 1; j < i-1; j++ {
		if (arr[j-1] < arr[j] && arr[j] < arr[j+1]) || (arr[j+1] < arr[j] && arr[j] < arr[j-1]) {
			count++
		}
	}

	fmt.Println(count)
}
