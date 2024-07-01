package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	table := make([]int, n)
	for i := 0; i < k; i++ {
		var d int
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			var a int
			fmt.Scan(&a)
			table[a-1] = 1
		}
	}

	count := 0
	for i := 0; i < n; i++ {
		if table[i] == 0 {
			count++
		}
	}
	println(count)
}
