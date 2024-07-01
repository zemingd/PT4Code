package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	d := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	for i := 1; i < n; i++ {
		d[i] = d[i-1] + a[i-1]
	}
	var result int

	for i := 1; i < n; i++ {
		result += d[i] * a[i]
	}
	fmt.Println(result)
}
