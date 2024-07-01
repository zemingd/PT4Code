package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	fmt.Scanf("%d %d %d", &n, &a, &b)
	answer := countRedBall(n, a, b)
	fmt.Println(answer)
}

func countRedBall(n, a, b int) int {
	x := n / (a + b)
	y := n % (a + b)
	cntRedBall := x * a
	if y > a {
		cntRedBall += a
	} else {
		cntRedBall += y
	}
	return cntRedBall
}
