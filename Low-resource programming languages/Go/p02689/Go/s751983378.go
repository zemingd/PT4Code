package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	listH := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&listH[i])
	}

	listA := make([]int, m)
	listB := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&listA[i], &listB[i])
	}

	count := 0
	list := make([]bool, n)
	for i := 0; i < n; i++ {
		list[i] = true
	}

	for i := 0; i < m; i++ {
		if listH[listA[i]-1] > listH[listB[i]-1] {
			list[listA[i]-1] = true
			list[listB[i]-1] = false
		} else if listH[listA[i]-1] < listH[listB[i]-1] {
			list[listA[i]-1] = false
			list[listB[i]-1] = true
		} else {
			list[listA[i]-1] = false
			list[listB[i]-1] = false
		}

	}
	for i := 0; i < n; i++ {
		if list[i] == true {
			count++
		}
	}

	fmt.Println(count)

}
