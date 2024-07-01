package main

import (
    "fmt"
    "strings"
)

func main() {
	var S string
	var s []string
	var r []string
	var N int

	N = 0
	r = []string{}

	fmt.Scan(&S)
	s = strings.Split(S, "")

	for i := 0; i < len(s); i++ {
		r = append(r, s[len(s)-i-1])
	}

	for i := 0; i < len(s)/2; i++ {
		if s[i] != r[i] {
			N++
		}
	}
    fmt.Println(N)
}
