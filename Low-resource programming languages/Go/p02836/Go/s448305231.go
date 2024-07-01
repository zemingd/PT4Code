package main

import "fmt"

func main() {

	var S string
	fmt.Scanf("%s", &S)

	var count int
	for i := 0; i < len(S)/2; i++ {
		if S[i] != S[len(S)-1-i] {
			count++
		}
	}

	fmt.Println(count)
}
