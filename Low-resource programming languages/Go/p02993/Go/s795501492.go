package main

import "fmt"

func main() {
	var S string

	fmt.Scan(&S)

	if len(S) == 4 {
		if S[0] != S[1] && S[1] != S[2] && S[2] != S[3] {
			fmt.Print("Good")
		} else {
			fmt.Print("Bad")
		}
	}

}
