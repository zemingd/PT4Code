package main

import (
	"fmt"
)

func main() {

	var S string
	fmt.Scanf("%s", &S)

	var count int
	for i := 0; i < len(S)-1; i++ {
		if S[i] != S[i+1] {
			count++
		}
	}

	if count > 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
