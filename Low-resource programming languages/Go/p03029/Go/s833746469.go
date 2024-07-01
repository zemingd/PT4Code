package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)
	res := (a*3 + b)

	fmt.Println(res / 2)
}
