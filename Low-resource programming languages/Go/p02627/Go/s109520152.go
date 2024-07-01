package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	rs := []rune(s)
	r := rs[0]
	if 'a' <= r && r <= 'z' {
		fmt.Println("a")
		return
	}
	if 'A' <= r && r <= 'Z' {
		fmt.Println("A")
		return
	}
}
