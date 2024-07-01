package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	if n < 105 {
		fmt.Println(0)
	} else if n < 135 {
		fmt.Println(1)
	} else if n < 165 {
		fmt.Println(2)
	} else if n < 189 {
		fmt.Println(3)
	} else if n < 195 {
		fmt.Println(4)
	} else {
		fmt.Println(5)
	}
}
