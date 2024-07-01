package main

import (
	"fmt"
)

func main() {
	var N int
	var S, T string
	fmt.Scan(&N, &S, &T)

	for i := 0; i < N; i++ {
		fmt.Printf("%s%s", string(S[i]), string(T[i]))
	}
	fmt.Println()
}
