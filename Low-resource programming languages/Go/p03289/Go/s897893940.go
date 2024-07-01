package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)

	if S[0] != 'A' {
		fmt.Println("WA")
		return
	}

	num := 0
	pos := 0
	for i := 2; i < len(S)-1; i++ {
		if S[i] == 'C' {
			num++
			pos = i
		}
	}
	if num != 1 {
		fmt.Println("WA")
		return
	}

	for i := 1; i < len(S); i++ {
		if pos == i {
			continue
		}
		if S[i] < 'a' || 'z' < S[i] {
			fmt.Println("WA")
			return
		}
	}

	fmt.Println("AC")
}
