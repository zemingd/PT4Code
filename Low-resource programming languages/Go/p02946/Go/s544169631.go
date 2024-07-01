package main

import "fmt"

const (
	MIN = -1000000
	MAX = 1000000
)

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func main() {
	var k, x int

	fmt.Scan(&k)
	fmt.Scan(&x)

	a := max(x-k+1, MIN)
	b := min(x+k-1, MAX)

	for i := a; i <= b; i++ {
		if i == a {
			fmt.Printf("%d", i)
		} else {
			fmt.Printf(" %d", i)
		}
	}
	fmt.Println()
}
