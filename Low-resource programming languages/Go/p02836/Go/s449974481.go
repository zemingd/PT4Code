package main

import "fmt"

func main() {
	var S string
	fmt.Scanf("%s", &S)
	N := len(S)

	count := 0
	for i := 0; i < N/2; i++ {
		if S[i] != S[N-i-1] {
			count++
		}
	}
	fmt.Println(count)
}
