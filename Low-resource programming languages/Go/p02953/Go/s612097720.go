package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	for i := 0; i < n-1; i++ {
		for j := i + 1; h[i] >= h[j] && j < n; j++ {
			if h[j]+1 < h[i] {
				fmt.Println("No")
				return
			}
		}
	}
	fmt.Println("Yes")
}
