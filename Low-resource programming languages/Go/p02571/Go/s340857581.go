package main

import (
	"fmt"
	"strings"
)

func makeTestStr(t string, l int) []string {
	res := []string{}
	for i := 0; i <= len(t)-l; i++ {
		res = append(res, t[i:i+l])
	}
	return res
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	matchLen := 0
	for i := 1; i <= len(s); i++ {
		matched := true
		words := makeTestStr(t, i)
		for _, word := range words {
			if strings.Contains(s, word) {
				matchLen = i
				break
			} else {
				matched = false
			}
		}
		if !matched {
			break
		}
	}
	fmt.Println(len(t) - matchLen)
}
