package main

import (
	"fmt"
)

func main() {
	var a, b, t int
	fmt.Scanln(&a, &b, &t)
	fmt.Println((t / a) * b)
}
