package main

import (
	"fmt"
)

func main() {
	var c int
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	for i := 0; i < len(s); i++ {
		if s[i] == t[i] {
			continue
		}
		c++
	}
	fmt.Println(c)
}
