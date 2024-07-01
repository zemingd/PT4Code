package main

import (
	"fmt"
)

func main() {
	// Code for B - Substring
	var S, T string
	fmt.Scanf("%s", &S)
	fmt.Scanf("%s", &T)

	var count int
	var ans int = len(T)
	for i := 0; i < len(S)-len(T)+1; i++ {
		count = 0
		//fmt.Println(S, T)
		for j := 0; j < len(T); j++ {
			if S[i+j] != T[j] {
				count++
			}
		}
		//fmt.Println(string(S[i]), count)

		if ans > count {
			ans = count
		}
	}

	fmt.Println(ans)
}
