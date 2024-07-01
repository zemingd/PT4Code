package main

import (
	"fmt"
)

func main() {
	var N int
	var S string
	fmt.Scan(&N, &S)
	count := 0
	for i := 0; i < N-1; i++ {
		l := string(S[i])
		r := string(S[i + 1])
		if l == "#" && r == "." {
			count++
		}
	}
	fmt.Println(count)
}
