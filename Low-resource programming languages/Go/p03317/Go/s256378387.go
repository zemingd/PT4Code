package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	min := a[0]
	mini := 0
	for i := range a {
		if a[i] < min {
			min = a[i]
			mini = i
		}
	}

	fmt.Println((mini+k-2)/(k-1) + (n-mini+k-3)/(k-1))
}
