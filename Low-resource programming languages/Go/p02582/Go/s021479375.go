package main

import (
	"fmt"
)

func main() {
	var s []byte
	fmt.Scan(&s)
	if s[0] == 'R' && s[1] == 'R' && s[2] == 'R' {
		fmt.Println(3)
	} else if s[0] == 'R' && s[1] == 'R' || s[1] == 'R' && s[2] == 'R' {
		fmt.Println(2)
	} else if s[0] == 'R' || s[1] == 'R' || s[2] == 'R' {
		fmt.Println(1)
	} else {
		fmt.Println(0)
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
