package main

import (
	"fmt"
)

func main() {
	var a, p int
	fmt.Scan(&a, &p)

	fmt.Printf("%d", calc(a, p))
}

func calc(a int, p int) int {
	return (a*3 + p) / 2
}
