package main

import "fmt"

var INF = 100100100100

func main() {
	var n, m, x int
	fmt.Scan(&n, &m, &x)
	c := make([]int, n)
	a := make(map[int][]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
		a[i] = make([]int, m)
		for j, _ := range a[i] {
			fmt.Scan(&a[i][j])
		}
	}

	//全探索
	ans := INF
	for i := 0; i < 1<<uint(n); i++ {
		price := 0
		exp := make([]int, m)
		for j := 0; j < n; j++ {
			if i>>uint(j)&1 == 1 {
				price += c[j]
				for k := 0; k < m; k++ {
					exp[k] += a[j][k]
				}
			}
		}
		ok := true
		for j := 0; j < m; j++ {
			if exp[j] < x {
				ok = false
			}
		}
		if ok {
			ans = min(ans, price)
		}

	}
	if ans == INF {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}