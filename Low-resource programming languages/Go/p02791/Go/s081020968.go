package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	ps := make([]int32, n)
	for i := range ps {
		fmt.Scan(&ps[i])
	}

	var cnt int32
	tmp := ps[0]
	for _, p := range ps {
		if tmp <= p {
			tmp = p
			cnt++
		}
	}

	fmt.Print(cnt)
}

