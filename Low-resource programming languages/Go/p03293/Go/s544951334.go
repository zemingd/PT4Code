package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	S += S
	for i := 0; i < len(T); i++ {
		if S[i:i+len(T)] == T {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
