package main

import (
	"fmt"
	"strings"
)

func main() {
	var S string
	fmt.Scan(&S)
	if S[0] == 'A' && strings.Count(S, "A") == 1 && strings.Count(S, "C") == 1 &&
		strings.Count(S[2:len(S)-1], "C") == 1 && !strings.ContainsAny(S, "BDEFGHIJKLMNOPQRSTUVWXYZ") {
		fmt.Println("AC")
		return
	}
	fmt.Println("WA")
}
