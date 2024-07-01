package main

import (
	"fmt"
)

var A int
var P int

func main() {
	fmt.Scan(&A, &P)
	var total int
	total = (3*A + P) / 2
	fmt.Printf("%v\n", total)
}
