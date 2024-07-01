package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ret := a + b

	if ret < (a - b) {
		ret = a - b
	}
	if ret < (a * b) {
		ret = a * b
	}

	fmt.Println(ret)
}
