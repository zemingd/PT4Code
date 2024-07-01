package main

import (
	"fmt"
)

func main() {
	var a, p int
	fmt.Scan(&a, &p)
	//
	p += 3 * a
	fmt.Println(p / 2)
}
