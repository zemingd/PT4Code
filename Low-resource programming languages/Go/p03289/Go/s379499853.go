package main

import (
	"fmt"
	"strings"
)

func main() {
	var S string
	fmt.Scan(&S)
	if string(S[0]) != "A" {
		fmt.Println("WA")
	} else if string(S[2]) != "C" {
		fmt.Println("WA")
	}

	for i := 0; i < len(S); i++ {
		if i == 0 || i == 2 {
			continue
		}
		if string(S[i]) != strings.ToLower(string(S[i])) {
			fmt.Println("WA")
			return
		}
	}
	fmt.Println("AC")
}
