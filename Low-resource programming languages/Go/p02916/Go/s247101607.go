package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	b := make([]int, n)
	a := make([]int, n)
	c := make([]int, n-1)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &b[i])
	}
	for i := 0; i < n-1; i++ {
		fmt.Scanf("%d", &c[i])
	}
	sum := 0
	for i, v := range a {
		sum += b[v-1]
		if i > 0 {
			if v == a[i-1] + 1 {
				sum += c[a[i-1]-1]
			}
		}
	}
	fmt.Println(sum)
}