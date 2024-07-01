package main

import (
	"fmt"
)

func main() {
	var n, k int64
	fmt.Scan(&n, &k)
	if k == 1 {
		fmt.Println(0)
		return
	}
	for {
		a := AbsInt(n, k)
		if n < a {
			break
		}
		n = a
	}
	fmt.Println(n)
}

func AbsInt(n1, n2 int64) int64 {
	if n1 > n2 {
		return n1 - n2
	}
	return n2 - n1
}
