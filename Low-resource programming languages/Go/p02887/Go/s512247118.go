package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scanf("%d", &n)
	fmt.Scanf("%s", &s)

	fmt.Println(answer(n, s))
}

func answer(n int, s string) int {
	res := 0
	var buf int32
	for _, v := range s {
		if buf != v {
			buf = v
			res += 1
		}
	}

	return res
}

