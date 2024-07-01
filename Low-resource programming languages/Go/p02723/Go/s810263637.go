package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	r := []rune(s)
	if r[2] == r[3] && r[4] == r[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
