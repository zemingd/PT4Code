package main

import (
	"fmt"
)

func countDivs(n int) (c int) {
	c = 0
	for i := 1; i <= n; i++ {
		if n%i == 0 {
			c++
		}
	}
	return
}

func main() {
	var N int
	fmt.Scan(&N)
	cnt := 0
	for i := 1; i <= N; i = i + 2 {
		if countDivs(i) == 8 {
			cnt++
		}
	}
	fmt.Println(cnt)
}
