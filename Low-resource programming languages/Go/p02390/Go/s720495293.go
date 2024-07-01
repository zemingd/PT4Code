package main

import (
	"fmt"
)

func main() {
	var S int
	fmt.Scan(&S)
	var m int = S / 60
	var h int = m / 60
	S %= 60
	m %= 60

	fmt.Printf("%d:%d:%d", h, m, S)
}

