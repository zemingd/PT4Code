package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	for i, r := range s {
		if i%2 == 0 {
			fmt.Printf("%c", r)
		}
	}
	fmt.Println("")
}
