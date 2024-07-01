package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	ans := 0
	if S[0] == T[0] {
		ans++
	}
	if S[1] == T[1] {
		ans++
	}
	if S[2] == T[2] {
		ans++
	}
	fmt.Println(ans)
}
