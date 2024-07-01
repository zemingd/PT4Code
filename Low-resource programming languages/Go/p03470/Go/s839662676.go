package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	m := map[int]struct{}{}
	for i := 0; i < n; i++ {
		var t int
		fmt.Scan(&t)
		m[t] = struct{}{}
	}

	fmt.Println(len(m))

}
