package main

import (
	"fmt"
)

func main() {
	var t []byte
	fmt.Scan(&t)
	for i := range t {
		switch t[i] {
		case '?':
			fmt.Print("D")
		default:
			fmt.Print(string([]byte{t[i]}))
		}
	}
	fmt.Println()
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
