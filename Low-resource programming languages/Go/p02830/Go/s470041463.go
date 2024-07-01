package main

import "fmt"

func main() {

	var N int
	var S, T string
	fmt.Scanf("%d", &N)
	fmt.Scanf("%s %s", &S, &T)

	for i := 0; i < N; i++ {

		fmt.Printf("%c%c", S[i], T[i])
	}
	fmt.Printf("\n")
}
