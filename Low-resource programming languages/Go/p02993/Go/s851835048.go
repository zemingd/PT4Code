package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	pre := s[0]
	for i := 1; i < 4; i++ {
		if pre == s[i] {
			fmt.Println("Bad")
			return
		}
		pre = s[i]
	}
	fmt.Println("Good")
}
