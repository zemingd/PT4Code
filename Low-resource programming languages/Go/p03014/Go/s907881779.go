package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, p int
	fmt.Scan(&n)
	fmt.Scan(&p)

	var max int

	dan := make([][]string, n, n)
	l, r, d, t := make([][]int, n, n), make([][]int, n, n), make([][]int, n, n), make([][]int, n, n)

	for i := 0; i < n; i++ {
		l[i], r[i], d[i], t[i] = make([]int, p, p), make([]int, p, p), make([]int, p, p), make([]int, p, p)
		var n string
		fmt.Scan(&n)
		dan[i] = strings.Split(n, "")
		for j := 0; j < p; j++ {
			if dan[i][j] == "#" {
				l[i][j] = 0
				d[i][j] = 0
			} else {
				if i == 0 {
					d[i][j] = 1
				} else {
					d[i][j] = d[i-1][j] + 1
				}
				if j == 0 {
					l[i][j] = 1
				} else {
					l[i][j] = l[i][j-1] + 1
				}
			}
		}
	}

	for i := n - 1; i >= 0; i-- {
		for j := p - 1; j >= 0; j-- {
			if dan[i][j] == "#" {
				r[i][j] = 0
				t[i][j] = 0
			} else {
				if i == n-1 {
					t[i][j] = 1
				} else {
					t[i][j] = t[i+1][j] + 1
				}
				if j == p-1 {
					r[i][j] = 1
				} else {
					r[i][j] = r[i][j+1] + 1
				}
			}
			// v := l[i][j] + r[i][j] + t[i][j] + d[i][j] - 3
			// if v > max {
			// 	max = v
			// }
		}
	}
	for i := 0; i < n; i++ {
		for j := 0; j < p; j++ {
			v := l[i][j] + r[i][j] + t[i][j] + d[i][j] - 3
			if v > max {
				max = v
			}
		}
	}

	fmt.Printf("%#v\n", max)
}