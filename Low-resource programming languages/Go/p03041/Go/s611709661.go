package main

import (
	"fmt"
	"strings"
)

func main() {
	var N, K int
	var S string
	fmt.Scan(&N, &K, &S)

	fmt.Println(S[:K-1] + strings.ToLower(S[K-1:K]) + S[K:])
}
