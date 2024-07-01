package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	var k int
	fmt.Scan(&k)

	for i := 0; i < k && i < len(s); i++ {
		if s[i] != '1' {
			fmt.Println(string(s[i]))
			return
		}
	}
	fmt.Println("1")
}
