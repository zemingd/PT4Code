package main

import "fmt"

func main() {
	var s string
	var count int
	fmt.Scanf("%s", &s)
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