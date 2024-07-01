package main

import "fmt"

func main() {
	// Code for B - String Rotation
	var S, T string
	fmt.Scanf("%s", &S)
	fmt.Scanf("%s", &T)
	var flag int = 0
	for i := 0; i < len(S); i++ {
		temp := S[len(S)-1:len(S)] + S[0:len(S)-1]
		if temp == T {
			flag = 1
			break
		} else {
			S = temp
		}
	}
	if flag == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
