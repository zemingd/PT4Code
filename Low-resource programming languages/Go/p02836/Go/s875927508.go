package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	fst := s[:len(s)/2]
	snd := s[len(s)/2:]

	var res int
	for i := 0; i < len(fst); i++ {
		if fst[i] != snd[len(snd)-1-i] {
			res++
		}
	}
	fmt.Println(res)
}
