package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)

	res := 0
	for i:= 0; i < 2; i++ {
		if a > b {
			res += a
			a--
		} else {
			res += b
			b--
		}
	}

	fmt.Println(res)
}