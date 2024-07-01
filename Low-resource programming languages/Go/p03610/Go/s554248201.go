package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	ss := strings.Split(s, "")

	literal := ""
	for i := 1; i <= len(ss); i++ {
		if i%2 == 1 {
			literal += ss[i-1]
		}
	}

	fmt.Println(literal)
}
