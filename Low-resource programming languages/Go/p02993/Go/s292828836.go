package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	if s[0] == s[1] || s[1] == s[2] || s[2] == s[3] {
		fmt.Println("Bad")
	} else {
		fmt.Println("Good")
	}
}
