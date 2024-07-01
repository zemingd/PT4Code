package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	m := n * (n + 1) / 2
	fmt.Println(m - n)
}
