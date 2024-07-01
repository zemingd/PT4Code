package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	x := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &x[i])
	}
	for i := 0; i < len(x); i++ {
		total := []int{}
		for _, v := range x[:i] {
			total = append(total, v)
		}
		for _, v := range x[i+1:] {
			total = append(total, v)
		}
		fmt.Println(total[len(total)/2])
	}
}
