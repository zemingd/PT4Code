package main

import (
	"fmt"
	"strings"
)

func getRuneAt(s string, i int) rune {
	rs := []rune(s)
	return rs[i]
}

func main() {
	var N, K int
	var S, s string
	fmt.Scan(&N, &K)
	fmt.Scan(&S)

	s = string(getRuneAt(S, K-1)) //for idx
	sd := strings.ToLower(s)
	S = strings.Replace(S, s, sd, -1)

	fmt.Println(S)
}
