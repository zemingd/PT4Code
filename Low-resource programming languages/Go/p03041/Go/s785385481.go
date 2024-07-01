package main

import (
	"fmt"
	"strings"
)

func main() {

	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	var S string
	fmt.Scanf("%s", &S)

	fmt.Printf("%s%s%s\n", S[0:K-1], strings.ToLower(S[K-1:K]), S[K:N])
}
