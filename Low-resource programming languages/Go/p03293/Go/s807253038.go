package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S)
	fmt.Scan(&T)
	ok := false
	for i := 0; i < len(S); i++ {
		if S == T {
			ok = true
			break
		}
		S = S[i:len(S)] + S[0:i]
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
