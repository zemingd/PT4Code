package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	literal := ""
	for i := 0; i < len(s); i += 2 {
		literal += string(s[i])
	}

	fmt.Println(literal)
}
