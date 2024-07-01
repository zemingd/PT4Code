package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)

	if S[0] == S[1] || S[1] == S[2] || S[2] == S[3] {
		fmt.Println("Bad")
	} else {
		fmt.Println("Good")
	}
}
