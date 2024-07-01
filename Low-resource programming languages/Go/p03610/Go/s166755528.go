package main

import "fmt"

func main() {
	// Code for B - OddString
	var s string
	fmt.Scanf("%s", &s)

	for i := 0; i < len(s); i++ {
		if (i+1)%2 != 0 {
			fmt.Printf("%c", s[i])
		}
	}

	fmt.Printf("\n")
}
