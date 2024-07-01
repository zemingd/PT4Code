package main

import (
	"fmt"
)

func main() {
	var s, t []byte
	fmt.Scan(&s, &t)
	var ng bool
	for i := range s {
		if s[i] != t[i] {
			ng = true
		}
	}
	if len(t) == len(s)+1 && !ng {
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
