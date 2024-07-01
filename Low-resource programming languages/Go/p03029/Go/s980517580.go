package main

import (
	"fmt"
)

func main() {
	var a, p int
	fmt.Scan(&a, &p)
	fragments := a*3 + p
	fmt.Println(fragments / 2)
}
