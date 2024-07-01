package main

import "fmt"

func main() {
	// Code for A - Dividing a String
	var S string
	fmt.Scan(&S)

	var count int
	for i := 0; i < len(S)-1; i++ {
		if S[i] != S[i+1] {
			count++
		}
	}

	fmt.Println(count + 2)
}
