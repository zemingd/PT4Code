package main

import "fmt"

func main() {
	var S, T string

	fmt.Scan(&S, &T)
	count := 0

	if len(S) == 3 && len(T) == 3 {
		for i := 0; i < 3; i++ {
			if S[i] == T[i] {
				count++
			}
		}
	}
	fmt.Print(count)
}
