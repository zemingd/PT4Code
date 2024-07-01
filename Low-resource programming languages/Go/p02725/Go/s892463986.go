package main

import (
	"fmt"
)

func main() {
	// input K N, K: 湖の円周 N: 家の件数
	var k, n int
	fmt.Scan(&k, &n)

	// input An, An: 家の位置(湖北端から時計回り)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	// 初期値で先頭と終端の距離を求めておく
	base := k - a[n-1] + a[0]
	for i := 0; i < n-1; i++ {
		// 家間での距離を測り、最大のものを保持する
		base = max(base, a[i+1] - a[i])
	}
	// 家間の距離が最大の区間を除いた距離が最短
	fmt.Println(k - base)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}