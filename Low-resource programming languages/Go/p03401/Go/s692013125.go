package main

import "fmt"

func diff(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n+2)
	for i := 1; i < len(as)-1; i++ {
		fmt.Scan(&as[i])
	}

	cost := 0
	for i := 0; i < len(as)-1; i++ {
		cost += diff(as[i], as[i+1])
	}

	for i := 1; i < len(as)-1; i++ {
		a0 := as[i-1]
		a1 := as[i]
		a2 := as[i+1]
		fmt.Println(cost - diff(a0, a1) - diff(a1, a2) + diff(a0, a2))
	}
}
