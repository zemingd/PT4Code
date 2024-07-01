package main

import (
	"fmt"
)

func Reverse(s string) string {

	runes := []rune(s)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}

func main() {

	var S string
	fmt.Scanf("%s", &S)

	N := len(S)

	if (S[0:(N-1)/2] == Reverse(S[0:(N-1)/2])) && (S[(N+3)/2-1:N] == Reverse(S[(N+3)/2-1:N])) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
