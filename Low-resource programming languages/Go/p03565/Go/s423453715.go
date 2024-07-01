package main

import (
	"fmt"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	index := -1
	for i := range S {
		var j int
		for ; j < len(T); j++ {
			if i+j < len(S) && (S[i+j] == '?' || S[i+j] == T[j]) {
			} else {
				break
			}
		}

		if j == len(T) {
			index = i
		}
	}

	if index == -1 {
		fmt.Println("UNRESTORABLE")
	} else {
		s := S[:index] + T + S[index+len(T):]
		for i := range s {
			if s[i] == '?' {
				fmt.Print("a")
			} else {
				fmt.Print(string(s[i]))
			}
		}
		fmt.Println()
	}

}
