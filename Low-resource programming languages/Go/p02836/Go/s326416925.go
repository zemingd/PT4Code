package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	sLength := len(S)
	mid := sLength / 2
	diffCount := 0
	for i := 0; i < mid; i++ {
		if S[i] != S[sLength-i-1] {
			diffCount++
		}
	}

	fmt.Println(diffCount)
}
