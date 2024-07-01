package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanln(&n)
	if x := n % 1000; x != 0 {
		fmt.Println(1000 - x)
	} else {
		fmt.Println(0)
	}
}