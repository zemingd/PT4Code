package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	r := []rune(s)
	if r[0] == r[1] && r[1] == r[2] {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
