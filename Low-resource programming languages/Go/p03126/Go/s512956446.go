package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	list := make([]int, m+1)
	var k, a int
	for i := 0; i < n; i++ {
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			fmt.Scan(&a)
			list[a]++
		}
	}

	var result int
	for i := 1; i < m+1; i++ {
		if list[i] == n {
			result++
		}
	}
	fmt.Println(result)
}