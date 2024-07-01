package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)

	if n >= 3200 {
		fmt.Println(s)
	} else {
		fmt.Println("red")
	}
}
