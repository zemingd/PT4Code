package main

import (
	"fmt"
)

func main() {
	var N int
	var S, T string
	fmt.Scan(&N)
	fmt.Scan(&S, &T)

	for i := 0; i < N; i++ {
		fmt.Print(S[i : i+1])
		fmt.Print(T[i : i+1])
	}
	fmt.Println()
}
