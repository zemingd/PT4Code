package main

import "fmt"

func main() {
	// Code for A - Connection and Disconnection
	var S string
	var K int
	fmt.Scan(&S, &K)

	var count1, count2 int
	for i := 0; i < len(S)-1; i++ {
		if S[i] == S[i+1] {
			count1++
			i++
		}
	}

	if S[0] != S[len(S)-1] {
		fmt.Println(count1 * K)
	} else {
		count2 = 0
		T := S + S
		for i := 0; i < len(T)-1; i++ {
			if T[i] == T[i+1] {
				count2++
				i++
			}
		}

		fmt.Println((K-1)*(count2-count1) + count1)
	}

}
