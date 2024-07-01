package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	h := make([]int, n+1)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	var result int
LOOP:
	for {
		for i := 1; i < n+1; i++ {
			if h[i-1] > 0 {
				h[i-1]--
				if h[i] == 0 {
					result++
					break
				}
			}
			if i == n {
				if h[i-1] == 0 && h[i] == 0 {
					break LOOP
				}
			}
		}
	}
	fmt.Println(result)
}
