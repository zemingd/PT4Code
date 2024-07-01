package main

import (
	"fmt"
)


func main() {
	var s string
	fmt.Scanf("%s", &s)

	if s[0] == 'R' && s[1] == 'R' && s[2] == 'R' {
		fmt.Println(3)
	} else if s[0] == 'R' && s[1] == 'R' ||
		s[1] == 'R' && s[2] == 'R' {
		fmt.Println(2)
	} else if s[0] == 'R' ||
		s[1] == 'R' ||
		s[2] == 'R' {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
}
