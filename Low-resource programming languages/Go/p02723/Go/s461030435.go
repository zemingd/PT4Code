package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scanf("%s\n", &S)
	s := []rune(S)
	if string(s[2]) == string(s[3]) && string(s[4]) == string(s[5]) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")

	}

}
