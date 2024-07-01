package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)
	n := 100
	var i int

	for n<x {
		i++
		n += n/100
	}
	fmt.Println(i)
}
