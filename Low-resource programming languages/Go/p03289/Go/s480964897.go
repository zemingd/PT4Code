package main

import (
	"fmt"
	"strings"
)

func main() {
	var S string
	fmt.Scan(&S)
	if S[0:1] != "A" {
		fmt.Println("WA")
		return
	}
	cnt := 0
	wi := 2
	for i, v := range S[2 : len(S)-1] {
		if v == 'C' {
			cnt++
			wi += i
		}
	}
	if cnt != 1 {
		fmt.Println("WA")
		return
	}
	for i := 1; i < len(S); i++ {
		if i == wi {
			continue
		}
		w := S[i : i+1]
		if w != strings.ToLower(w) {
			fmt.Println("WA")
			return
		}
	}
	fmt.Println("AC")

}