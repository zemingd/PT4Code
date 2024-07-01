package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	for i, c := range s {
		if i == 3 {
			fmt.Print("8")
		} else {
			fmt.Printf("%c", c)
		}
	}
	fmt.Println("")
}
