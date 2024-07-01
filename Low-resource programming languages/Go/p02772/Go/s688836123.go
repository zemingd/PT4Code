package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var ng bool
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		if a%2 == 0 && a%3 != 0 && a%5 != 0 {
			ng = true
		}
	}
	if ng {
		fmt.Println("DENIED")
	} else {
		fmt.Println("APPROVED")
	}
}
