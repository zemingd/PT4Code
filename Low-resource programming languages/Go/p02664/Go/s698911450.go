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
			if string(t[len(t)-1]) == "?" {
				fmt.Print("D")
			} else if i != 0 {
				if string(t[i-1]) == "P" && string(t[i+1]) == "D" {
					fmt.Println("P")
				} else {
					fmt.Print("D")
				}
			} else if string(t[i+1]) == "D" {
				fmt.Print("P")
			} else if string(t[i+1]) == "?" {
				fmt.Print("D")
			} else {
				fmt.Print("D")
			}
		}
	}
}