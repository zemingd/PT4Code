package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)
	h := a / 3600
	m := (a % 3600) / 60
	s := (a % 3600) % 60
	fmt.Printf("%d:%d:%d\n", h, m, s)
}

