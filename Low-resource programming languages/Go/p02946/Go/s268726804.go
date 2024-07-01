package main

import (
	"fmt"
	"strconv"
)

func Max(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}

func Min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func solve() {
	var k, x int
	fmt.Scanf("%d %d", &k, &x)

	left := Max(x-k+1, -1000000)
	right := Min(x+k-1, 1000000)

	ans := ""
	for i := left; i <= right; i++ {
		ans += strconv.Itoa(i) + " "
	}

	fmt.Println(ans)
}

func main() {
	solve()
}
