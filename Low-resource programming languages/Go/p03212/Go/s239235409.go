package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	fmt.Println(f(N, 0, true, true, true))
}

func f(N int, n int, r7, r5, r3 bool) int {
	if n > N {
		return 0
	}
	ret := 0
	if !r7 && !r5 && !r3 {
		ret++
	}
	ret += f(N, n*10+7, false, r5, r3)
	ret += f(N, n*10+5, r7, false, r3)
	ret += f(N, n*10+3, r7, r5, false)
	return ret
}
