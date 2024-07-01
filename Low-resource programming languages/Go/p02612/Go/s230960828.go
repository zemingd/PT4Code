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
		res = res - p
	}

	fmt.Println(res)
}
