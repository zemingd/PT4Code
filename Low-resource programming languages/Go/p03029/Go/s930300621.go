package main

import (
	"fmt"
)

func main() {
	var a int
	var p int

	fmt.Scan(&a)
	fmt.Scan(&p)

	n := (a*3 + p) / 2

	fmt.Println(n)
}
