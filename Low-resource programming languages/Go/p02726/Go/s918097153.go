package main

import (
	"fmt"
)

func main() {
	// Code for D - Line++
	var n, x, y int
	fmt.Scanf("%d %d %d", &n, &x, &y)

	c := map[int]int{}

	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if i == j {
				continue
			}

			r := Min([]int{
				Abs(j - i),
				Abs(x - 1 - j) + Abs(y - 1 - i) + 1,
				Abs(x - 1 - i) + Abs(y - 1 - j) + 1,
			})

			k, ok := c[r]
			if ok {
				c[r] = k + 1
			} else {
				c[r] = 1
			}
		}
	}

	for k := 1; k <= n-1; k++ {
		s, ok := c[k]
		if ok {
			fmt.Println(s / 2)
		} else {
			fmt.Println(0)
		}
	}
}

func Abs(x int) int {
	if x < 0 {
		return - x
	}

	return x
}

func Min(l []int) int {
	m := l[0]
	for _, x := range l {
		if x < m {
			m = x
		}
	}

	return m
}