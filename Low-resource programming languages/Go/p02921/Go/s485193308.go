package main

import (
	"fmt"
)

// main is ...
func main() {
	var s, t string
	fmt.Scan(&s, &t)

	ret := 0
	for i := 0; i < 3; i++ {
		if s[i] == t[i] {
			ret++
		}

	}

	fmt.Print(ret)
}

