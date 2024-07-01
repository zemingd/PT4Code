package main

import (
	"fmt"
)

func main() {
	var k int
	fmt.Scan(&k)
	var bs []byte
	fmt.Scan(&bs)
	fmt.Print(string(bs[0:min(k, len(bs))]))
	if len(bs) > k {
		fmt.Print("...")
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
