package main

import (
	"fmt"
)

func main() {
	var s []byte
	fmt.Scanf("%s", &s)
	length := len(s) - 1
	n := 0
	count := 0
	for {
		if n >= length - n {
			break
		}
		if s[n] != s[length - n] {
			count++
		}
		n++
	}

	fmt.Printf("%d", count)
}