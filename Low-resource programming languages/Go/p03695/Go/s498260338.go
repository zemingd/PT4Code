package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

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
		a = a / 400

		dic[a]++
	}

	cnt := 0
	for k := range dic {
		if k != 8 {
			cnt++
		}
	}
	minCnt := cnt
	maxCnt := cnt

	if v, in := dic[8]; in {
		minCnt = max(cnt, 1)
		maxCnt = min(cnt+v, 8)
	}

	fmt.Println(minCnt, maxCnt)
}
