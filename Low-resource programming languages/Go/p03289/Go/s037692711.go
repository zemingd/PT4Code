package main

import (
	"fmt"
	"strings"
)

func main() {
	var S string
	fmt.Scan(&S)
	if S[0] != 'A' {
		fmt.Println("WA")
		return
	}

	c := strings.Count(S[2:len(S)-1], "C")
	if c != 1 {
		fmt.Println("WA")
		return
	}

	for i := 1; i < len(S); i++ {
		s := S[i]
		if !(('a' <= s && s <= 'z') || s == 'C') {
			fmt.Println("WA")
			return
		}
	}

	fmt.Println("AC")
}
