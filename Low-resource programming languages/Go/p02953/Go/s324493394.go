package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	start := 0
	for i := 0; i < n; i++ {
		if start <= h[i]-1 {
			start = h[i] - 1
		} else if start <= h[i] {
			start = h[i]
		} else {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
