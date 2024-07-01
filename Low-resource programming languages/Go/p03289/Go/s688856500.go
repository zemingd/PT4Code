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

	flag = flag && strings.Contains(S[2:len(S)-1], "C")

	if flag {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
