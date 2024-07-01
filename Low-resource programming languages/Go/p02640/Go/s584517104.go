package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	ok := true
	if b%2 == 1 {
		ok = false
	}
	if a*2 > b || b > a*4 {
		ok = false
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
