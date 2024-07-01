package main

import (
	"fmt"
)

func main() {
	var s string
	var k int64
	fmt.Scan(&s, &k)
	for i := 0; i < k; i++ {
		if c != '1' {
			fmt.Println(string(s[i]))
			return
		}
	}
	fmt.Println("1")
}
