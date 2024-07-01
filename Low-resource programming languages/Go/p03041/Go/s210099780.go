package main

import (
	"fmt"
	"strings"
)

func main() {
	var N, K int
	var S, r string
	fmt.Scan(&N, &K, &S)
	for i, v := range S {
		if i == K-1 {
			r += strings.ToLower(string(v))
		} else {
			r += string(v)
		}
	}
	fmt.Println(r)
}