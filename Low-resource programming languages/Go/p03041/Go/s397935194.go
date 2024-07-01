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

	res := ""
	s = string(getRuneAt(S, K-1)) //for idx
	sd := strings.ToLower(s)

	/*
		s = string(getRuneAt(S, K-1)) //for idx
		sd := strings.ToLower(s)
		_ = strings.Join(res, string([]rune{c}))
	*/

	for idx, c := range S {
		if idx+1 == K {
			res += sd
		} else {
			res += string([]rune{c})
		}
	}

	fmt.Println(res)
}
