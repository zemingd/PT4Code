package main

import (
	"fmt"
	"math"
)

func main() {
	var n, m, x int
	fmt.Scanf("%d %d %d", &n, &m, &x)
	c := make([]int, n)
	a := make([][]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &c[i])
		a[i] = make([]int, m, m)
		for j := 0; j < m; j++ {
			fmt.Scanf("%d", &a[i][j])
		}
	}

	min := math.MaxInt64
	for i := 0; i < 1<<uint(n); i++ {
		tempM := make([]int, m)
		cost := 0
		for j := 0; j < n; j++ {
			if i>>uint(j)&1 > 0 {
				for k := 0; k < m; k++ {
					tempM[k] += a[j][k]
				}
				cost += c[j]
			}
		}
		OK := true
		for j := 0; j < m; j++ {
			if tempM[j] > 0 {
				if tempM[j] < x {
					OK = false
				}
			}
		}
		if OK {
			if min > cost {
				min = cost
			}
		}
	}
	if min == math.MaxInt64 {
		fmt.Println("-1")
	} else {
		fmt.Println(min)
	}
}
