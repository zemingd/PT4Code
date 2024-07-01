package main

import (
	"fmt"
	"strings"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	for i := 0; i <= len(S)-len(T); i++ {
		b := true
		for j := 0; j < len(T); j++ {
			t := T[j : j+1]
			s := S[i+j : i+j+1]
			if t == s || s == "?" {
			} else {
				b = false
				break
			}
		}
		if b {
			w := S[:i] + T + S[i+len(T):]
			w = strings.Replace(w, "?", "a", -1)
			fmt.Println(w)
			return
		}
	}
	fmt.Println("UNRESTORABLE")
}