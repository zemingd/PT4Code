package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	answer := isBusNeeded(s)
	if answer {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func isBusNeeded(s string) bool {
	prev := rune(s[0])
	busNeeded := false
	for _, val := range s {
		if val != prev {
			busNeeded = true
		}
		prev = val
	}
	return busNeeded
}
