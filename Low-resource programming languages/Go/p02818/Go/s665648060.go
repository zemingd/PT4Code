package main

import (
	"fmt"
)

func main() {
	var a, b, k int64
	fmt.Scan(&a, &b, &k)
	if k < a {
		fmt.Println(a-k, b)
		return
	}
	if a+b < k {
		fmt.Println(0, 0)
		return
	}
	fmt.Println(0, b-(k-a))
	return
}
