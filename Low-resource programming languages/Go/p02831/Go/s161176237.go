package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	cal := a * b

	fmt.Println(cal)
}