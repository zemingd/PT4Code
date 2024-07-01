package main

import (
	"fmt"
	"strings"
)

func main() {

	var N, K int
	var S string
	fmt.Scan(&N, &K, &S)
	ans := ""
	for i := 0; i < N; i++ {
		if i == K-1 {
			ans += strings.ToLower(string(S[K-1]))
		} else {
			ans += string(S[i])
		}
	}
	fmt.Println(ans)
}
