package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}

	cCount := 0
	for i := 2; i <= len(s)-2; i++ {
		if s[i] == 'C' {
			cCount++
		}
	}
	if cCount != 1 {
		fmt.Println("WA")
		return
	}

	for i := 1; i < len(s); i++ {
		if s[i] != 'C' && (s[i] < 'a' || s[i] > 'z') {
			fmt.Println("WA")
			return
		}
	}

	fmt.Println("AC")

}
