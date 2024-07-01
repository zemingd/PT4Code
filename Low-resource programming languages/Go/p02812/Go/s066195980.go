package main

import "fmt"

const target = "ABC"

func main() {
	s := input()
	c := 0
	for i := 0; i <= len(s)-3; i++ {
		if target == s[i:i+3] {
			c++
		}
	}
	fmt.Println(c)
}

func input() string {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	return s
}
