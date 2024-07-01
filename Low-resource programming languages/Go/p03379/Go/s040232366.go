package main

import "fmt"

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(vs []int) int {
	m := vs[0]
	for _, v := range vs {
		if v < m {
			m = v
		}
	}
	return m
}

func cost(c, num int) int {
	if num < 0 {
		return 0
	}
	return c * num
}

func main() {
	var a, b, c, x, y int
	fmt.Scan(&a, &b, &c, &x, &y)

	fmt.Println(min([]int{a*x + b*y, x*c*2 + cost(b, y-x), y*c*2 + cost(a, x-y)}))
}
