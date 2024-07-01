package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)
	if a%1000 == 0 {
		fmt.Println(0)
		return
	}
	fmt.Println(1000 - (a % 1000))
}
