package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	r := []rune(s)

	if len(r) >= 6 && r[2] == r[3] && r[4] == r[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
