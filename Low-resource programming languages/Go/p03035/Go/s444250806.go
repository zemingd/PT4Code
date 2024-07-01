package main

import (
	"fmt"
)

func main() {
	var a, b, fee int
	fmt.Scan(&a, &b)

	if a >= 13 {
		fee = b
	} else if a >= 6 {
		fee = b / 2
	} else {
		fee = 0
	}

	fmt.Println(fee)
}
