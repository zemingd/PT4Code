package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	var ng = false
	if s[0] != 'A' {
		ng = true
	}

	var sub = s[2 : len(s)-2]
	var indexC = 2
	var countC = 0
	for i, c := range sub {
		if c == 'C' {
			countC++
			indexC += i
		}
	}
	if countC != 1 {
		ng = true
	}

	for i, c := range s {
		if i == 0 || i == indexC {
			continue
		}
		if 'A' <= c && c <= 'Z' {
			println(c)
			ng = true
		}
	}

	if ng {
		fmt.Println("WA")
	} else {
		fmt.Println("AC")
	}
}
