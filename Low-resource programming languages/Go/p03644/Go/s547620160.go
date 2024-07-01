package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	max := 0
	ans := 1
	for i := 1; i <= n; i++ {
		a := i
		var cnt int
		for a > 0 {
			if a%2 != 0 {
				break
			}
			a /= 2
			cnt++
		}
		if cnt > max {
			max = cnt
			ans = i
		}
	}
	fmt.Println(ans)
}
