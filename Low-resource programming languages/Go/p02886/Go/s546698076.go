package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	d := make([]int, n)
	var total int

	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
	}

	for i := 0; i < n - 1; i++ {
		for j := i + 1; j < n; j++ {
			total += d[i] * d[j]
		}
	}

	fmt.Println(total)
}
