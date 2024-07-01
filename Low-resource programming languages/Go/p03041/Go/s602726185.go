package main

import (
	"fmt"
	"strings"
)

func main() {
	var (
		n, m int
		S    string
		Ss   string
	)
	fmt.Scan(&n, &m, &S)
	for i, s := range S {
		if i != m-1 {
			Ss += string([]rune{s})
		} else {
			Ss += strings.ToLower(string([]rune{s}))
		}
	}
	fmt.Println(Ss)
}
