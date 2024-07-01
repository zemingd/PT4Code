package main

import (
	"fmt"
)

func main() {
	var S, h, m, s int
	fmt.Scan(&S)
	h = S / 3600
	m = S % 3600 / 60
	s = S % 3600 % 60

	fmt.Printf("%d:%d:%d\n", h, m, s)
}

