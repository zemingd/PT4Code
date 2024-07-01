package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)
	l := "abcdefghijklmnopqrstuvwxyz"
	u := "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	for _, s := range l {
		if a == string(s) {
			fmt.Println("a")
			return
		}
	}
	for _, s := range u {
		if a == string(s) {
			fmt.Println("A")
			return
		}
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
