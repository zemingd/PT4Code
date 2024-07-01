package main

import "fmt"

func solve() {
	var N int
	fmt.Scan(&N)

	po := 1
	for po <= N {
		po *= 2
	}
	fmt.Println(po / 2)
}

func main() {
	solve()
}

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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
