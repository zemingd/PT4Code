package main

import (
	"fmt"
)

func main() {
	var s string
	var si, ei int = -1, -1
	fmt.Scan(&s)

	for i :=0; i<len(s); i++ {
		sc := string(s[i])
		if si < 0 && sc == "A" {
			si = i
		}
		if sc == "Z" {
			ei = i
		}
	}

	fmt.Println(ei - si + 1)
}