package main

import (
	"fmt"
)

func main() {
	var n, m, x int
	fmt.Scanf("%d %d %d", &n, &m, &x)
	c := make([]int, n)
	sk := make([][]int, n)
	for i := 0; i < n; i++ {
		sk[i] = make([]int, m)
		fmt.Scan(&c[i])
		for j := 0; j < m; j++ {
			fmt.Scan(&sk[i][j])
		}
	}
	var sum int
	mini := 100000000000000000
	for bit := 0; bit < (1 << n); bit++ {
		sum = 0
		aa := make([]int, m)
		for i := 0; i < n; i++ {
			if (bit>>i)&1 == 1 {
				sum += c[i]
				for j := 0; j < m; j++ {
					aa[j] += sk[i][j]
				}
			}
		}
		if min(aa) >= x {
			if mini >= sum {
				mini = sum
			}
		}
	}
	if mini == 99999 {
		fmt.Println("-1")
	} else {
		fmt.Println(mini)
	}
}

func min(a []int) int {
	m := 999999
	for i := 0; i < len(a); i++ {
		if m >= a[i] {
			m = a[i]
		}
	}
	return m
}
