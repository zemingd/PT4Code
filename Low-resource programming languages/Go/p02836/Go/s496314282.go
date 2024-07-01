package main

import (
	"fmt"
)

func main() {
	s := []string{}
	i := 0
	count := 0
	size := len(s)
	fmt.Scan(&s)
	for size == 0 {
		i++
		if s[i] == s[size] {
			s[size] = s[i]
			size--
			count++
		}
	}
	fmt.Println("%d", count)
}
