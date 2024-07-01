package main

import (
	"fmt"
)

func main() {

	var t string
	fmt.Scan(&t)

	for i := 0; i < len(t); i++ {
		if string(t[i]) == "P" || string(t[i]) == "D" {
			fmt.Print(string(t[i]))
		} else {
			fmt.Print("D")
		}
	}
}
