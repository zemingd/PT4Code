package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	var K int
	var S string
	fmt.Scanf("%d", &K)
	fmt.Scanf("%s", &S)

	if utf8.RuneCountInString(S) >= K {
		result := S[:K]
		result += "..."
		fmt.Println(result)
		return
	}
	fmt.Println(S)
}
