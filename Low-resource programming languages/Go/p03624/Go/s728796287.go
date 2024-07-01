package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	for x := 'a'; x <= 'z'; x++ {
		if !strings.Contains(s, string(x)) {
			fmt.Println(string(x))
			return
		}
	}

	fmt.Println("None")
}
