package main

import (
	"fmt"
)

func main() {
	var p []int
	var n, c int

	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &c)
		p = append(p, c)
	}

	var cnt int
	for i := 1; i < n - 1; i++ {
		if p[i-1] <= p[i] && p[i] < p[i+1] ||
			p[i-1] > p[i] && p[i] >= p[i+1] {
			cnt += 1
		}
	}

	fmt.Println(cnt)
}