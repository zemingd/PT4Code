package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	if int(s[0]) <= int('Z') {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
