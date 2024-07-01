package main

import (
	"fmt"
	"strings"
)

func main() {
	var (
		s string
	)
	fmt.Scan(&s)
	S := make([]string, 15)
	for _, ss := range s {
		switch ss {
		case 'B':
			S = S[:len(S)-1]
		default:
			S = append(S, string(ss))
		}
	}
	fmt.Println(strings.Join(S, ""))
}
