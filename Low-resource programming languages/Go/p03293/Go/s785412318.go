package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	for i := range s {
		first := s[0 : len(s)-i-1]
		second := s[len(s)-1-i:]
		tmp := second + first
		if tmp == t {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
