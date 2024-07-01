package main

import (
	"fmt"
)

func main() {
	var a, p int
	fmt.Scan(&a, &p)

	p += a * 3
	fmt.Println(p / 2)
}
