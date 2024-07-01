package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	page := n/2 + n%2
	fmt.Println(page)
}
