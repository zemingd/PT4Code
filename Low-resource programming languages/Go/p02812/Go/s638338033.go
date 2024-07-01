package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d", &N)

	var S string
	fmt.Scanf("%s", &S)
	var count int = 0
	for i := 0; i < (N - 2); i++ {
		if S[i] == 'A' && S[i+1] == 'B' && S[i+2] == 'C' {
			count++
		}
	}
	fmt.Println(count)
}
