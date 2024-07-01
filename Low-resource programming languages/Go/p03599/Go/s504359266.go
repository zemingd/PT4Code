package main

import (
	"fmt"
)

var a, b, c, d, e, f int
var x, y int
var maxNoudo float64 = -1.0
var dp [][]bool = make([][]bool, 3000)

func dfs(A, B int) {
	tot := A + B
	if tot > f {
		return
	}
	if dp[A][B] {
		return
	}
	dp[A][B] = true

	var noudo float64 = float64(100*B) / float64(tot)
	if noudo > maxNoudo {
		maxNoudo = noudo
		x, y = A, B
	}

	dfs(A+100*a, B)
	dfs(A+100*b, B)
	if A*e >= 100*(B+c) {
		dfs(A, B+c)
	}
	if A*e >= 100*(B+d) {
		dfs(A, B+d)
	}
	return
}

func __init() {
	for i := range dp {
		dp[i] = make([]bool, 3000)
	}
}

func main() {
	fmt.Scan(&a, &b, &c, &d, &e, &f)
	__init()
	dfs(0, 0)
	fmt.Println(x+y, y)
}