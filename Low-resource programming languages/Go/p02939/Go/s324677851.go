package main

import "fmt"

func main() {
	// Code for A - Dividing a String
	var S string
	fmt.Scan(&S)

	if len(S) == 1 {
		fmt.Println("1")
	} else if len(S) == 2 {
		if S[0] != S[1] {
			fmt.Println("2")
		} else {
			fmt.Println("1")
		}
	} else {
		var ans int
		var T string
		for i := 0; i < len(S); i++ {
			if S[i:i+1] != T {
				T = S[i : i+1]
			} else {
				if i == len(S)-1 {
					break
				} else {
					i++
					T = ""
				}
			}
			ans++
		}
		fmt.Println(ans)
	}
}
