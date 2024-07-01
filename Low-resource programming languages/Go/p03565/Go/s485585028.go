package main

import (
	"fmt"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	start := -1
	for i := range S {
		var invalid bool
		for j := 0; j < len(T); j++ {
			if !(i+j < len(S)) {
				invalid = true
				break
			}
			if !(T[j] == S[i+j] || S[i+j] == '?') {
				invalid = true
			}
		}

		if !invalid {
			start = i
			break
		}
	}

	if start == -1 {
		fmt.Println("UNRESTORABLE")
	} else {
		for i := range S {
			if i < start || start+len(T) < i {
				if S[i] == '?' {
					fmt.Print("a")
				} else {
					fmt.Print(string(S[i]))
				}
			} else {
				fmt.Print(string(T[i-start]))
			}
		}
		fmt.Println()
	}

}
