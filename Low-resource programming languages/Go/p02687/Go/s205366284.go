package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	if s == "ARC" {
		fmt.Println("ABC")
	} else {
		fmt.Println("ARC")
	}
}
