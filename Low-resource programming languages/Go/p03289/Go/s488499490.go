package main

import (
	"fmt"
	"strings"
)

func main() {

	var S string

	fmt.Scan(&S)

	flag := true

	flag = flag && (S[0] == 'A')

	flag = flag && (strings.Count(S[2:len(S)-1], "C") == 1)

	for _, c := range S {
		if c < 'a' {
			flag = false
			break
		}
	}

	if flag {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
