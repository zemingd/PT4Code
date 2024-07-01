package main

import (
	"fmt"
	"strings"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	S = Reverse(S)
	T = Reverse(T)
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
			fmt.Println(Reverse(w))
			return
		}
	}
	fmt.Println("UNRESTORABLE")
}
func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}