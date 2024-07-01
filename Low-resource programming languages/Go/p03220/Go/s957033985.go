package main

import (
	"fmt"
)

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var N, T, A int
	fmt.Scanf("%d", &N)
	fmt.Scanf("%d%d", &T, &A)
	a := 0
	ta := 1145141919
	for i := 0; i < N; i++ {
		var Hi int
		fmt.Scanf("%d", &Hi)
		ti := 1000*T - 6*Hi
		if abs(1000*A-ti) < abs(1000*A-ta) {
			a = i
			ta = ti
		}
	}
	fmt.Printf("%d\n", a+1)
	return
}
