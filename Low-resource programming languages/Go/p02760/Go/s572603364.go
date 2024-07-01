package main

import (
	"fmt"
	"log"
)

func solution(a [][]int, b []int) string {
	m := make([][]int, 3)
	for i := range m {
		m[i] = make([]int, 3)
	}

	for _, n := range b {
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if n == a[i][j] {
					m[i][j] = 1
				}
			}
		}
	}
	log.Print(m)

	for i := 0; i < 3; i++ {
		if m[i][0] == 1 && m[i][1] == 1 && m[i][2] == 1 {
			return "Yes"
		}
	}

	for i := 0; i < 3; i++ {
		if m[0][i] == 1 && m[1][i] == 1 && m[2][i] == 1 {
			return "Yes"
		}
	}

	if (m[0][0] == 1 && m[1][1] == 1 && m[2][2] == 1) || (m[0][2] == 1 && m[1][1] == 1 && m[2][0] == 1) {
		return "Yes"
	}
	return "No"
}

func main() {
	var x, y, z int
	a := make([][]int, 3)
	for i := range a {
		a[i] = make([]int, 3)
	}
	for i := 0; i < 3; i++ {
		fmt.Scan(&x, &y, &z)
		a[i][0] = x
		a[i][1] = y
		a[i][2] = z
	}

	var n int
	fmt.Scan(&n)

	b := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&x)
		b[i] = x
	}

	fmt.Println(solution(a, b))
}
