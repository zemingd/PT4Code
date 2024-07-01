package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	// remove odd strings
	var answer string
	for pos, r := range s {
		if pos%2 == 0 {
			answer = answer + string(r)
		}
	}
	fmt.Println(answer)
}
