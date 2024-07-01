package main

import (
	"fmt"
)

func main() {
	var S int
	fmt.Scan(&S)

	h := S / 60 / 60
	m := S/60 - h*60
	s := S % 60

	fmt.Printf("%d:%d:%d\n", h, m, s)
}

