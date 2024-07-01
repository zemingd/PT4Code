package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	cnt := 1
	p := a
	for a < b {
		a = a - 1 + p
		cnt++
	}
	fmt.Println(cnt)
}
