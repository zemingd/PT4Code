package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	for i := 0; i < len(s); i += 2 {
		fmt.Printf("%c", s[i])
	}
	fmt.Print()
}