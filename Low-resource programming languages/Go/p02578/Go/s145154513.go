package main

import "fmt"

func main() {
	var n, sum int
	fmt.Scan(&n)

	a := make([]int, n)
	fmt.Scan(&a[0])
	for i := 1; i < n; i++ {
		fmt.Scan(&a[i])
		if a[i] < a[i-1] {
			sum += a[i-1] - a[i]
			a[i] = a[i-1]
		}
	}
	fmt.Println(sum)
}
