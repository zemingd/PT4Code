package main

import (
	"fmt"
)

func main() {
	var x uint64
	fmt.Scan(&x)

	n, i := uint64(100), uint64(0)
	for ; n < x; i++ {
		n += n / 100
	}

	fmt.Println(i)
}