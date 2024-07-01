package main

import "fmt"

func main() {
	var n int
	var (
		bfN int
		stp int
	)
	fmt.Scan(&n)
	a := make([]int, n)
	stp = 0
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if i == 0 {
			bfN = a[i]
			continue
		}
		if a[i] < bfN {
			stp = stp + (bfN - a[i])
		} else {
			bfN = a[i]
		}
	}
	fmt.Println(stp)
}