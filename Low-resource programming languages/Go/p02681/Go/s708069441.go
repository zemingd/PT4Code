package main

import (
	"fmt"
)

func main() {

	var S, T string
	fmt.Scanf("%s", &S)
	fmt.Scanf("%s", &T)

	if S[0:len(S)] == T[0:len(S)] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
