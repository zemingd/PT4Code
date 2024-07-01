package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n []byte
	fmt.Scan(&n)
	var sum int
	for i := range n {
		a, _ := strconv.Atoi(string([]byte{n[i]}))
		sum += a
	}
	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
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
