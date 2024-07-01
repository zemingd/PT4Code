package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	if s <= "2019/04/30" {
		fmt.Println("heisei")
	} else {
		fmt.Println("TBD")
	}
}
