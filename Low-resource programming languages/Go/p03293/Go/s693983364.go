package main

import (
	"fmt"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	for i := 0; i < len(S); i++ {
		w := S[len(S)-1-i:] + S[:len(S)-1-i]
		if w == T {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}