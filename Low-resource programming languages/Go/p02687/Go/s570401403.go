package main

import (
	"fmt"
)

func main() {
	var n string
	fmt.Scan(&n)
	if n == "ARC" {
		fmt.Println("ABC")
		return
	}
	fmt.Println("ARC")
}
