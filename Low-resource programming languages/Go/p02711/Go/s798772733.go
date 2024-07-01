package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	fmt.Println(check(s))
}

func check(s string) string {
	for _, c := range s {
		if c == '7' {
			return "Yes"
		}
	}
	return "No"
}
