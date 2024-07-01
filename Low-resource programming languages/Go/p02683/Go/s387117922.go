package main

import "fmt"

func main() {
	var n, m, x int
	fmt.Scan(&n)
	fmt.Scan(&m)
	fmt.Scan(&x)

	c := make([]int, n, n)
	a := make([][]int, n, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
		a[i] = make([]int, m, m)
		for j := 0; j < m; j++ {
			fmt.Scan(&a[i][j])
		}
	}

	const F = 999999999
	answer := F

	for i := 1; i < (1 << n); i++ {
		achieved := true
		for j := 0; j < m; j++ {
			b := 0
			for k := 0; k < n; k++ {
				if i&(1<<k) == 1<<k {
					b += a[k][j]
				}
			}
			if b < x {
				achieved = false
				break
			}
		}
		if achieved {
			s := 0
			for j := 0; j < n; j++ {
				if i&(1<<j) == 1<<j {
					s += c[j]
				}
			}
			if s < answer {
				answer = s
			}
		}
	}

	if answer == F {
		fmt.Println(-1)
	} else {
		fmt.Println(answer)
	}
}
