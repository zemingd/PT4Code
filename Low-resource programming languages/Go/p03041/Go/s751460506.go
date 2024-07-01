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

	var res string
	for i := range S {
		if i == K-1 {
			res += strings.ToLower(string(S[i]))
		} else {
			res += string(S[i])
		}
	}
	fmt.Println(res)
}