package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	if n < 105 {
		fmt.Println(0)
	} else {
		fmt.Println(1)
	}
}
