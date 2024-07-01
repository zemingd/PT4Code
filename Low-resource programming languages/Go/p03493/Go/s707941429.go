package main

import (
	"fmt"
)

func main() {
	var (
		s string
		i int
	)
	fmt.Scanln(&s)
	if s[0] == '1' {
		i++
	}
	if s[1] == '1' {
		i++
	}
	if s[2] == '1' {
		i++
	}
	fmt.Println(i)
}