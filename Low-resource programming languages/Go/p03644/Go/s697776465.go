package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	var n int
	var m int
	for i := 2; i <= N; i++ {
		for j := 1; ; j++ {
			if i%(pow(2, j)) != 0 {
				if j > m {
					n, m = i, j-1
				}
				break
			}
		}
	}
	fmt.Println(n)
}

func pow(n int, p int) int {
	r := n
	for i := 1; i < p; i++ {
		r = r * n
	}
	return r
}
