package main

import "fmt"

type item struct {
	w, v int
}

var (
	n, w  int
	items []item
	dp    [][]int
)

func main() {
	fmt.Scan(&n, &w)

	items = make([]item, 0, n)
	for range make([]struct{}, n) {
		var weight, value int
		fmt.Scan(&weight, &value)
		items = append(items, item{weight, value})
	}

	dp = make([][]int, n+1)
	for i := range dp {
		dp[i] = make([]int, w+1)
		for j := range dp[i] {
			dp[i][j] = -1
		}
	}
	fmt.Println(recDp(0, w))
}

func recDp(i, left int) int {
	if i == n {
		return 0
	} else if dp[i][left] != -1 {
		return dp[i][left]
	}
	var res int
	if items[i].w > left {
		res = recDp(i+1, left)
	} else {
		res = max(
			recDp(i+1, left),
			recDp(i+1, left-items[i].w)+items[i].v,
		)
	}
	dp[i][left] = res
	return res
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
