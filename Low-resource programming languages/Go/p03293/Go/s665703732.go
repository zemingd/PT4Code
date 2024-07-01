package main

import (
	"fmt"
)

func main() {
	var _S, _T string
	fmt.Scanf("%s\n%s", &_S, &_T)
	S, T := []rune(_S), []rune(_T)
	for i := 0; i < len(S); i++ {
		for j := 0; j < len(S); j++ {
			if S[(j+i)%len(S)] != T[j] {
				goto A
			}
		}
		fmt.Printf("Yes\n")
		return
	A:
	}
	fmt.Printf("No\n")
}
