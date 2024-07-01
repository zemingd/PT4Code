package main

import (
	"fmt"
)

var ans = 0

func main() {
	var n int
	fmt.Scan(&n)
	f(0, n, 0, false, false, false)
	fmt.Println(ans)
}

func f(v, n, c int, a1, a2, a3 bool) {
	if v > n {
		return
	}
	if a1 && a2 && a3 {
		ans++
	}
	if c == 9 {
		return
	}
	f(v*10+3, n, c+1, true, a2, a3)
	f(v*10+5, n, c+1, a1, true, a3)
	f(v*10+7, n, c+1, a1, a2, true)
}
