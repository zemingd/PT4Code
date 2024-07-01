package main

import (
	"fmt"
	"strings"
)

func main() {
	var (
		s, t string
	)
	fmt.Scan(&s, &t)
	S := strings.Split(s, "")
	T := strings.Split(t, "")
	a := 0
	for i := 0; i < 3; i++ {
		if S[i] == T[i] {
			a++
		}
	}
	fmt.Println(a)
}
