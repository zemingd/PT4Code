package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	if s == "ABC" {
		s = "ARC"
	} else {
		s = "ABC"
	}
	fmt.Println(s)
}
