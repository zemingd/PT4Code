package main

import (
	"fmt"
	"strings"
)

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	var n, a, b, c, d int
	var s string
	fmt.Scan(&n, &a, &b, &c, &d)
	fmt.Scan(&s)
	if c < d {
		if !(strings.Contains(s[a-1:c], "##")) && !(strings.Contains(s[b-1:d], "##")) {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else {
		if strings.Contains(s[b-1:min(c, d)], "...") && !(strings.Contains(s[a-1:c], "##")) && !(strings.Contains(s[b-1:d], "##")) {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}
}
