package main

import (
	"fmt"
)

func main() {
	var s string
	var t string

	fmt.Scan(&s)
	fmt.Scan(&t)

	if s == t[0:len(s)] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}


