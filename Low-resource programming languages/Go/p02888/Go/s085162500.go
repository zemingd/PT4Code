package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	l := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&l[i])
	}
	kind := 0
	for i := 0; i < n - 2; i++ {
		for j := i + 1; j < n - 1; j++ {
			for k := j + 1; k < n; k++ {
				a := l[i]
				b := l[j]
				c := l[k]
				if a < b + c && b < c + a && c < a + b {
					kind++
				}
			}
		}
	}
	fmt.Println(kind)
}
