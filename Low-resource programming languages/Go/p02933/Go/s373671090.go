package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	var s string
	fmt.Scan(&s)
	if N < 3200 {
		fmt.Println("red")
	} else {
		fmt.Println(s)
	}
}
