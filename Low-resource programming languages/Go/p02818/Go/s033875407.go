package main

import (
	"fmt"
)

func main() {
	var a, b, k, c, d int64
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&k)
	if a < k {
		c = 0
	} else {
		c = a - k
	}
	if k < a {
		d = b
	} else if k < a+b {
		d = b - k + a
	} else {
		d = 0
	}
	fmt.Println(c, d)
}