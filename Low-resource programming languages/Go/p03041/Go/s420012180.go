package main

import (
	"fmt"
	"log"
	"strings"
)

func main() {

	var N, K int //
	var S, s string

	_, err := fmt.Scan(&N, &K, &S)
	if err != nil {
		log.Fatal(err)
		}

	s = S[K - 1 : K]
	s = strings.ToLower(s)

	fmt.Println(S[0:K-1] + s + S[K:N])
}
