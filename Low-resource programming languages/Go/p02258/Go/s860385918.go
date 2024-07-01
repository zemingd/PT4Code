package main

import "fmt"

func main() {
	var n, profit int
	var a [200000]int

	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	profit = a[1] - a[0]
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if a[j]-a[i] > profit {
				profit = a[j] - a[i]
			}
		}
	}
	fmt.Println(profit)
}

