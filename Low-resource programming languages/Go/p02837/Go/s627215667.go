package main

import (
	"fmt"
)

func main() {
	var N, r int
	fmt.Scan(&N)
	a := make([]int, N)
	x := make([]int, N*15)
	y := make([]int, N*15)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
		for j := 0; j < a[i]; j++ {
			fmt.Scan(&x[i*N+j], &y[i*N+j])
		}
	}
	for s := 0; s < 1<<uint(N); s++ {

		q := make([]int, 0)
		m := map[int]int{}
		for i := 0; i < N; i++ {
			if (s & (1 << uint(i))) > 0 {
				q = append(q, i)
				m[i]++
			}
		}
		b := true
		for k, _ := range m {
			for j := 0; j < a[k]; j++ {
				wx := x[k*N+j]
				wy := y[k*N+j]
				_, isExist := m[wx-1]
				if wy == 1 {
					if !isExist {
						b = false
						break
					}
				} else {
					if isExist {
						b = false
						break
					}
				}
			}
			if !b {
				break
			}
		}
		if b {
			r = Max(r, len(m))
		}
	}
	fmt.Println(r)

}
func Max(a, b int) int {
	if b > a {
		return b
	}
	return a
}
