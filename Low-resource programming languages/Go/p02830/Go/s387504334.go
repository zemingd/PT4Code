package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	var S, T string
	fmt.Scan(&S, &T)
	for i := 0; i < N; i++ {
		fmt.Print(string(S[i]))
		fmt.Print(string(T[i]))
	}
	fmt.Println()
}
