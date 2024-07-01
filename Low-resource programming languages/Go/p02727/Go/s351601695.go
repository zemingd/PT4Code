// これはヒントですがにぶたんはオーバーキルっつーかキルできねぇTLEなったわ

package main

import (
	"fmt"
	"sort"
)

func main() {
	var X, Y, A, B, C int
	fmt.Scan(&X, &Y, &A, &B, &C)
	P, Q, R := make([]int, A), make([]int, B), make([]int, C)

	for i := 0; i < A; i++ {
		var V int
		fmt.Scan(&V)
		P[i] = V
	}
	for i := 0; i < B; i++ {
		var V int
		fmt.Scan(&V)
		Q[i] = V
	}
	for i := 0; i < C; i++ {
		var V int
		fmt.Scan(&V)
		R[i] = V
	}
	sort.Sort(sort.Reverse(sort.IntSlice(P)))
	sort.Sort(sort.Reverse(sort.IntSlice(Q)))
	R = append(R, P[:X]...)
	R = append(R, Q[:Y]...)
	sort.Sort(sort.Reverse(sort.IntSlice(R)))
	ans := 0
	for i := 0; i < X+Y; i++ {
		ans += R[i]
	}
	fmt.Println(ans)
}
