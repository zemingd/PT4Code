package main

import "fmt"

func main() {
	var str string
	fmt.Scan(&str)
	S := []byte(str)
	if S[0] != 'A' {
		fmt.Println("WA")
		return
	}
	S[0] = 'a'
	foundC := false
	for i := 2; i < len(S)-1; i++ {
		if S[i] == 'C' {
			S[i] = 'c'
			foundC = true
			break
		}
	}
	if !foundC {
		fmt.Println("WA")
		return
	}
	for i := 0; i < len(S); i++ {
		if 'A' <= S[i] && S[i] <= 'Z' {
			fmt.Println("WA")
			return
		}
	}
	fmt.Println("AC")
}
