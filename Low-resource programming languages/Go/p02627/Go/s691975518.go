package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)

	if 'a' <= a[0] && a[0] <= 'z' {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}
}
