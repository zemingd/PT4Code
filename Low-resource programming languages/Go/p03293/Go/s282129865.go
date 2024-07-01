package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S)
	fmt.Scan(&T)
	ok := false
	if S == T {
		ok = true
	} else {
		for i := 1; i < len(S); i++ {
			s := make([]rune, 0)
			s = []rune(S[i:len(S)])
			s = []rune(append(s, []rune(S[0:i])...))
			if string(s) == T {
				ok = true
				break
			}
		}
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
