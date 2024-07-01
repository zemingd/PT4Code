package main

import (
	"fmt"
)

func checkPlan(t, x, y int) bool {
	if z := t - x - y; z >= 0 && z%2 == 0 {
		return true
	} else {
		return false
	}
}

func main() {
	var N int
	fmt.Scan(&N)
	possibilities := make([]bool, N)
	for i := 0; i < N; i++ {
		var t, x, y int
		fmt.Scan(&t, &x, &y)
		possibilities[i] = checkPlan(t, x, y)
	}
	for i := 0; i < N; i++ {
		if possibilities[i] {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}
}
