package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	t := n%k
	t2 := t-k
	if t2<0 {
		t2*= -1
	}
	fmt.Println(min(t,t2))
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
