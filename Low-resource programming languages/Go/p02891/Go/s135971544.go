package main

import "fmt"

func main() {
	// Code for A - Connection and Disconnection
	var S string
	var K int
	fmt.Scan(&S, &K)

	var count int
	for i := 0; i < len(S)-1; i++ {
		if S[i] == S[i+1] {
			count++
			S = S[0:i+1] + "_" + S[i+2:len(S)]
		}
	}

	if S[0] == S[len(S)-1] {
		count++
		fmt.Println(count*K - 1)
	} else {
		fmt.Println(count * K)
	}

}
