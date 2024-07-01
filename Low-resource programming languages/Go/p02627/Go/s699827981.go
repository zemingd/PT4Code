package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scanf("%s", &a)
	if a >= "a" && a <= "z" {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}
}
