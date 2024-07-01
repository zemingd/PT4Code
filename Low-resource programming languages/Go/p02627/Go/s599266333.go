package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string

	fmt.Scan(&a)
	if strings.Contains("ABCDEFGHIJKLMNOPQRSTUVWSYZ", a) {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
