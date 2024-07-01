package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	bs := make([]int, n-1)
	for i, _ := range bs {
		fmt.Scan(&bs[i])
	}

	as := make([]int, len(bs)+1)
	var s int
	for i, b := range bs {
		as[i] = b
		as[i+1] = b
		if i != 0 && bs[i-1] < as[i] {
			as[i] = bs[i-1]
		}
	}
	for _, a := range as {
		s += a
	}

	fmt.Print(s)
}
