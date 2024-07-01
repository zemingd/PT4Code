package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	g := [15][15]int{}
	for i := 0; i < 15; i++ {
		for j := 0; j < 15; j++ {
			g[i][j] = -1
		}
	}

	var a int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		var x, y int
		for j := 0; j < a; j++ {
			fmt.Scan(&x, &y)
			g[i][x-1] = y
		}
	}

	ans := 0
	for i := 0; i < 1<<uint(n); i++ {
		d := make([]int, n)
		for j := 0; j < n; j++ {
			if (i>>uint(j))&1 > 0 {
				d[j] = 1
			}
		}

		ok := true
		for j := 0; j < n; j++ {
			if d[j] != 1 {
				continue
			}
			for k := 0; k < n; k++ {
				if g[j][k] == -1 {
					continue
				}
				if g[j][k] != d[k] {
					ok = false
					break
				}
			}
		}
		if ok {
			c := count1(i)
			if ans < c {
				ans = c
			}
		}
	}
	fmt.Println(ans)
}

func count1(a int) int {
	c := 0
	for i := 0; i < 1<<uint(a); i++ {
		if a&(1<<uint(i)) > 0 {
			c++
		}
	}
	return c
}
