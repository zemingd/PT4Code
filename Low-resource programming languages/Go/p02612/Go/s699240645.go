package main

import (
	"fmt"
)

func main() {
	var i int
	fmt.Scan(&i)

	res := 0
	p := i % 1000
	if p != 0 {
		res = 1000 - p
	}

	fmt.Println(res)
}
