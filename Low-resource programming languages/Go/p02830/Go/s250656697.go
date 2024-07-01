package main

import (
	"fmt"
)

func main() {
	var N int
	var S, T string
	fmt.Scanf("%d\n%s %s\n", &N, &S, &T)
	s := []rune{}
	for i := 0; i < N; i++ {
		s = append(s, []rune(S)[i], []rune(T)[i])
	}
	fmt.Println(string(s))
}
