package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)
	if a <= "2019/04/30" {
		fmt.Println("Heisei")
		return
	}
	fmt.Println("TBD")
}
