package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scanln(&s)
	fmt.Scanln(&t)
	s = strings.Repeat(s, 2)
	if strings.Contains(s, t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
