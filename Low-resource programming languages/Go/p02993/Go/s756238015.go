package main

import (
	"fmt"
	"os"
)

func main() {
	var s string
	fmt.Scan(&s)

	for i := 0; i < len(s)-1; i++ {
		if s[i] == s[i+1] {
			fmt.Println("Bad")
			os.Exit(0)
		}
	}

	fmt.Println("Good")
}
