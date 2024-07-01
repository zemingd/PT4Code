package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	answer(s)
}

func answer(s string) {
	if s[2]==s[3] && s[4]==s[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
