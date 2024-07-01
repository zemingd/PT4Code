package main

import (
	"fmt"
)

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func main() {
	var n int
	var s string

	fmt.Scanf("%d", &n)
	fmt.Scanf("%s", &s)

	if n <= 1 {
		fmt.Println(0)
		return
	}

	black := make([]int, n)
	white := make([]int, n)

	black[0] = 0
	white[0] = 0

	bByte := "#"[0]

	ans := n

	for i := 0; i < n; i++ {
		prev := i - 1
		if i <= 0 {
			prev = 0
		}
		if s[i] == bByte {
			black[i] = black[prev] + 1
			white[i] = white[prev]
		} else {
			white[i] = white[prev] + 1
			black[i] = black[prev]
		}
	}

	for i := 0; i < n; i++ {
		ans = min(ans, black[i]+(white[n-1]-white[i]))
	}

	fmt.Println(ans)
}
