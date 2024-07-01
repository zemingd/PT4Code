package main

import (
	"fmt"
)

func main() {
	var s string
	var k int64
	fmt.Scan(&s, &k)
	var c1 int64
	var first rune
	for _, c := range s {
		if c != '1' {
			first = c
			break
		}
		c1++
	}
	if c1 >= k {
		fmt.Println("1")
		return
	}
	fmt.Println(string(first))
}
