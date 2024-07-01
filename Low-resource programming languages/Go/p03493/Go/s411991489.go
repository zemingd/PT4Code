package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	ss := strings.Split(s, "")

	ans := 0
	for _, c := range ss {
		if c == "1" {
			ans++
		}
	}

	fmt.Println(ans)
}
