package main

import (
	"fmt"
	"strings"
)

func Reverse(s string) string {
    runes := []rune(s)
    for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
        runes[i], runes[j] = runes[j], runes[i]
    }
    return string(runes)
}

func main() {
	var s string
	words := []string{"dream", "dreamer", "erase", "eraser"}
	fmt.Scan(&s)
	s = Reverse(s)
	for i := 0; i < len(words); i++ {
		words[i] = Reverse(words[i])
	}
	ans := false
	for len(s) > 0 {
		wordsHasPrefix := false
		for i := 0; i < len(words); i++ {
			if wordsHasPrefix = strings.HasPrefix(s, words[i]); wordsHasPrefix {
				s = strings.TrimPrefix(s, words[i])	
				if len(s) == 0 {
					ans = true
					break
				}
			}
		}
		if !wordsHasPrefix { break }
	}
	if ans {
		fmt.Println("YES")	
	} else {
		fmt.Println("NO")	
	}
}