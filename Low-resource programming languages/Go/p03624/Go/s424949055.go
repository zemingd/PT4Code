package main

import "fmt"

func solve() {
	var s string
	fmt.Scan(&s)

	po := make([]bool, 26)

	for _, c := range s {
		po[c-'a'] = true
	}
	for i, c := range po {
		if !c {
			fmt.Println(string('a' + i))
			return
		}
	}
	fmt.Println("None")
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
