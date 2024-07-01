package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	m := make(map[rune]bool, 26)
	r := 'a'
	for _, v := range s {
		m[v] = true
	}
	for {
		if m[r] == false {
			fmt.Println(string(r))
			break
		}
		if r == 'z' {
			fmt.Println("None")
			break
		}
		r++
	}
}
