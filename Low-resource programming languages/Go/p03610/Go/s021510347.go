package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	for i, c := range s {
		if i%2 == 0 {
			fmt.Printf("%c", c)
		}
	}
	fmt.Println()
}
