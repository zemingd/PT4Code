package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)
	if s[2] == s[3] && s[4] == s[5] {
		println("Yes")
	} else {
		println("No")
	}
}
