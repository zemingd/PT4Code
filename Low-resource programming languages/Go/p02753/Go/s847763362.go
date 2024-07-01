package main

import "fmt"

func main() {
	var S string
	fmt.Scanf("%s", &S)
	switch {
	case S[0] == S[1] && S[1] == S[2]:
		fmt.Println("No")
	default:
		fmt.Println("Yes")
	}
}
