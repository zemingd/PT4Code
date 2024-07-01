package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := 1
	var cnt int
	for a <= n {
		a *= k
		cnt++
	}
	fmt.Println(cnt)
}
