package main

import "fmt"

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)
	dic := map[int]int{}

	for range make([]struct{}, n) {
		var a int
		fmt.Scan(&a)
		const m = 400
		a = a / m * m

		dic[a]++
	}

	cnt := len(dic)
	minCnt := cnt
	maxCnt := cnt

	if v, in := dic[3200]; in {
		minCnt = max(cnt-1, 1)
		maxCnt = cnt + v - 1
	}

	fmt.Println(minCnt, maxCnt)
}
