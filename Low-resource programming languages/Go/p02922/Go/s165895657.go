package main

import (
	"fmt"
)

func main() {
	var a, b, p int
	fmt.Scan(&a, &b)
	p = a
	var cnt int
	if b > 1 {
		cnt++
		for a < b {
			a = a - 1 + p
			cnt++
		}
	}
	fmt.Println(cnt)
}
