package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	runes := []rune(s)

	for i := 1; i < 4; i++ {
		if runes[i-1] == runes[i] {
			fmt.Println("Bad")
			return
		}
	}
	fmt.Println("Good")
}
