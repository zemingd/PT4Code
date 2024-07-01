package main

import "fmt"

func main() {
	// Code for A - Coffee
	var S string
	fmt.Scanf("%s", &S)

	if S[2] == S[3] && S[4] == S[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
