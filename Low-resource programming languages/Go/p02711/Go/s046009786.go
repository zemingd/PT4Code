package main

import (
	"fmt"
)

func main() {
	var n string
	fmt.Scan(&n)
	flug := false
	for _, str := range n {
		if string(str) == "7" {
			flug = true
		}
	}
	if flug {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}