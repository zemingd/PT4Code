package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	fmt.Println((n + k - 3) / (k - 1))
}
