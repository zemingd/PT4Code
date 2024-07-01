package main

import (
	"fmt"
)

func main() {
	var s, t string

	fmt.Scan(&s, &t)

	ans := 0
	for i := range s {
		if s[i] == t[i] {
			ans++
		}
	}
	fmt.Println(ans)
}
