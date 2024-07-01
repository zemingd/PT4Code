package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	s1 := string([]rune(s)[0:len(s)/2])
	s2 := string([]rune(s)[(len(s)+1)/2:len(s)])

	s1s := strings.Split(s1,"")
	s2s := strings.Split(s2,"")

	count := 0
	for i := 0; i < len(s1s); i ++ {
		if s1s[i] != s2s[len(s2s)-1 -i] {
			count ++
		}
	}

	fmt.Println(count)
}