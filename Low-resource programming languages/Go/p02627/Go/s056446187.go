package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)
	v := a[0]
	if 'A' <= v && v <= 'Z' {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
