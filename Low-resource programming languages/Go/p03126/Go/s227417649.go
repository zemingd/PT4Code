package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	listK := make([]int, n)
	listA := make([][]int, n)
	countM := make([]int, m+1)
	count := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&listK[i])
		listA[i] = make([]int, listK[i])
		for j := 0; j < listK[i]; j++ {
			fmt.Scan(&listA[i][j])
		}
	}
	for i := 0; i < n; i++ {
		for j := 0; j < listK[i]; j++ {
			countM[listA[i][j]]++
		}
	}
	for i := 1; i <= m; i++ {
		if countM[i] == n {
			count++
		}
	}
	fmt.Println(count)
}
