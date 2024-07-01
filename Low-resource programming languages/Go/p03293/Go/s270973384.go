package main

import "fmt"

func main() {
	var S, T, s string
	fmt.Scan(&S)
	fmt.Scan(&T)
	ok := false
	for i := 0; i <= len(S); i++ {
		if s == T {
			ok = true
			break
		}
		s = S[i:len(S)] + S[0:i]
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
