package main

import (
	"fmt"
)

func main() {
	var n, c int
	fmt.Scan(&n)

	b := 1
	for i := 0; i < n; i++ {
		var t int
		fmt.Scan(&t)

		if b == t {
			b++
		} else {
			c++
		}
	}

	if c < n {
		fmt.Println(c)
	} else {
		fmt.Println(-1)
	}

}