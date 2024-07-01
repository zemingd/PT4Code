package main

import (
	"fmt"
)

func main() {
	N, K := read(), read()
	Max, i := K, 1

	for {
		if N <= Max-1 {
			fmt.Println(i)
			return
		}
		Max = Max * K
		i++
	}
}

func read() int {
	var v int
	fmt.Scan(&v)
	return v
}
