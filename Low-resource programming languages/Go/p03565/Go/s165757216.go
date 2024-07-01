package main

import (
	"fmt"
	"os"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	start := len(S) - len(T)
	if start < 0 {
		fmt.Println("UNRESTORABLE")
		os.Exit(0)
	}
	for s := start; s >= 0; s-- {
		i := 0
		for i = 0; i < len(T); i++ {
			if string(S[s+i]) != "?" && S[s+i] != T[i] {
				break
			}
		}
		if i == len(T) {
			result := ""
			for j := 0; j < start; j++ {
				if string(S[j]) == "?" {
					result += "a"
				} else {
					result += string(S[j])
				}
			}
			result += T
			fmt.Println(result)
			os.Exit(0)
		}
	}
	fmt.Println("UNRESTORABLE")
}
