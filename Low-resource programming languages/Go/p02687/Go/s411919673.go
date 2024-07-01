package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)
	if a == "ABC" {
		fmt.Println("ARC")
	} else {
		fmt.Println("ABC")
	}
}
