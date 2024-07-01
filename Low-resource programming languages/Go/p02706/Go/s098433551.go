package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	a := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scanf("%d", &a[i])
	}
	answer := calcHangOut(n, m, a)
	fmt.Println(answer)
}

func calcHangOut(n, m int, a []int) int {
	hangOutDays := n
	for i := 0; i < m; i++ {
		hangOutDays -= a[i]
	}
	if hangOutDays < 0 {
		return -1
	} else {
		return hangOutDays
	}
}
