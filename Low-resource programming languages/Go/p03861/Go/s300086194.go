package main

import (
	"fmt"
)

func main() {
	var a, b, x int64
	fmt.Scan(&a, &b, &x)
	if a > b {
		fmt.Println(0)
	} else if a == b {
		if a%x == 0 {
			fmt.Println(1)
		} else {
			fmt.Println(0)
		}
	} else if a%x == 0 && b%x == 0 {
		fmt.Println((b-a)/x + int64(1))
	} else {
		fmt.Println((b - a) / x)
	}
}
