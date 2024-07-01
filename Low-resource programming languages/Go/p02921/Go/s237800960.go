package main

import (
	"fmt"
)

func main() {

	var S, T string
	fmt.Scanf("%s", &S)
	fmt.Scanf("%s", &T)

	var count int = 0
	for i := 0; i < 3; i++ {
		if S[i] == T[i] {
			count++
		}
	}

	fmt.Println(count)
}
