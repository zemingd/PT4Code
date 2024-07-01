package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	count := 0
	if s[0] == '1' {
		count++
	}
	if s[1] == '1' {
		count++
	}
	if s[2] == '1' {
		count++
	}
	fmt.Println(count)
}
