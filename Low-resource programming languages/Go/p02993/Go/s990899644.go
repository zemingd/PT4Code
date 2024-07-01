package main

import (
	"fmt"
)

func main() {
	var a, fas string
	var an int
	fmt.Scan(&a)
	for num, key := range a {
		word := string(key)
		if num == 0 {
			fas = word
		}
		if num != 0 && fas == word {
			an = 1
			fas = word
		} else {
			fas = word
		}

	}
	if an == 1 {
		fmt.Println("Bad")
	} else {
		fmt.Println("Good")
	}
}
