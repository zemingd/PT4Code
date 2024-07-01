package main

import (
	"fmt"
)

func main() {
	a := 0
	b := 0
	c := 0
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	ret := c - (a - b)
	if ret < 0 {
		ret = 0
	}
	fmt.Printf("%v\n", ret)
}
