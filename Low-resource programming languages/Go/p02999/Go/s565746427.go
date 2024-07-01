package main

import (
	"fmt"
)

func main() {
	var x, a int
	fmt.Scan(&x, &a)
	if x < a {
		println(0)
	} else {
		println(10)
	}
}
