package main

import "fmt"

func main() {
	var n, min, max int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, 9)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		b[a[i]/400]++
	}
	for i := 0; i < 8; i++ {
		if b[i] > 0 {
			min++
		}
	}
	if min == 0 {
		min = 1
		if b[8] > 8 {
			max = 8
		} else {
			max = b[8]
		}
	} else {
		if min+b[8] > 8 {
			max = 8
		} else {
			max = min + b[8]
		}
	}
	fmt.Printf("%d %d\n", min, max)
}