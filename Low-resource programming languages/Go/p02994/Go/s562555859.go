package main

import (
	"fmt"
)

func main() {
	var n, l int
	fmt.Scan(&n)
	fmt.Scan(&l)

	var ret int
	eat := 1000
	for i := 0; i < n; i++ {
		ret += l + i

		a := l + i
		if a < 0 {
			a = -a
		}
		b := eat
		if b < 0 {
			b = -b
		}
		if a < b {
			eat = l + i
		}
	}

	ret = ret - eat
	fmt.Println(ret)
}
