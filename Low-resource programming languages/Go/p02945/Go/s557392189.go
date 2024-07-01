package main

import (
	"fmt"
)

func main() {
	var (
		a, b int
	)
	fmt.Scan(&a, &b)

	ret := a + b
	candidate := a - b
	if candidate > ret {
		ret = candidate
	}
	candidate = a * b
	if candidate > ret {
		ret = candidate
	}
	fmt.Println(ret)
}
