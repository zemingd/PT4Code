package main

import (
	"fmt"
)

const intMax = 2147483647

func main() {
	var h, a int
	_, _ = fmt.Scan(&h)
	_, _ = fmt.Scan(&a)
	res := 0
	for {
		res++
		h -= a
		if h <= 0 {
			break
		}
	}
	fmt.Println(res)
}
