package main

import (
	"fmt"
)

func main() {
	var a int
	var s string
	fmt.Scan(&a)
	fmt.Scan(&s)

	if a >= 3200 {
		fmt.Print(s)
	} else {
		fmt.Print("red")
	}
}
