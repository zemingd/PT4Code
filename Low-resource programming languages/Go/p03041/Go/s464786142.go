package main

import (
	"fmt"
	"strings"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	var S string
	fmt.Scan(&S)
	fmt.Println(S[:K-1] + strings.ToLower(string(S[K-1])) + S[K:])
}
