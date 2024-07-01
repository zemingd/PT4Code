package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	listD := make([]int, k)
	listA := make([][]int, k)
	for i := 0; i < k; i++ {
		fmt.Scan(&listD[i])
		listA[i] = make([]int, listD[i])
		for j := 0; j < listD[i]; j++ {
			fmt.Scan(&listA[i][j])
		}
	}
	count := 0
	list := make([]int, n)
	for i := 0; i < k; i++ {
		for j := 0; j < listD[i]; j++ {
			list[listA[i][j]-1]++
		}
	}
	for i := 0; i < k; i++ {
		if list[i] == 0 {
			count++
		}
	}
	fmt.Println(count)

}
