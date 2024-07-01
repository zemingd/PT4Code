package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	var S string
	fmt.Scanf("%s", &S)

	for i, char := range S {
		if i == K-1 {
			fmt.Print(string(char + 0x20))

		} else {
			fmt.Print(string(char))
		}
	}
	fmt.Println()

}
