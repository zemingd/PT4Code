package main

import (
	"fmt"
)

func main() {
	var code string
	fmt.Scan(&code)

	digit := code[0:1]
	for i := 1; i < len(code); i++ {
		if code[i:i+1] == digit {
			fmt.Println("Bad")
			return
		}
		digit = code[i : i+1]
	}
	fmt.Println("Good")

}
