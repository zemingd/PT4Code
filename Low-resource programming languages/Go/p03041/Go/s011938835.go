package main

import (
	"fmt"
	"strings"
)

var N, K int
var S string

func main() {
	fmt.Scan(&N, &K, &S)
	if N >= K {
		a := strings.Split(S, "")
		var b string

		for i := 0; i < N; i++ {
			if i == K-1 {
				b += strings.ToLower(a[K-1])
			} else {
				b += a[i]
			}
		}
		fmt.Printf("%s\n", b)
	} else {
		panic("a")
	}
}
