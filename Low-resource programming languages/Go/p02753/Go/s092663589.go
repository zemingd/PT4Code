package main

import (
	"fmt"
)

func answer158A(s string) string {
	if s == "AAA" || s == "BBB" {
		return "No"
	} else {
		return "Yes"
	}
}

func main() {
	var s string
	fmt.Scan(&s)
	
	fmt.Println(answer158A(s))
}
