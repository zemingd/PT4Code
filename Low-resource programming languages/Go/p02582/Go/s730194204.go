package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	if s == "RRR" {
		fmt.Println(3)
	} else if s == "RRS" || s == "SRR" {
		fmt.Println(2)
	} else if s == "SSS" {
		fmt.Println(0)
	} else {
		fmt.Println(1)
	}
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

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
