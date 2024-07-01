package main

import (
	"fmt"
)

func main() {
	// Code for B - Not Found
	var S string
	fmt.Scanf("%s", &S)

	ans := make(map[string]int, len(S))
	for i := 0; i < len(S); i++ {
		ans[string(S[i])]++
	}

	for i := 0; i < 26; i++ {
		char := string('a' + i)
		if ans[char] == 0 {
			fmt.Println(char)
			break
		}
		if i == 25 {
			fmt.Println("None")
		}
	}

}
