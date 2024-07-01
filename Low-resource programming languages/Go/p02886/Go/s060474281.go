package main

import "fmt"

func main() {
	var (
		n int
		d []int
	)
	fmt.Scan(&n)
	d = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
	}
	sum := 0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			sum += d[i] * d[j]
		}
	}
	fmt.Println(sum)
}
