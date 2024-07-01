package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&s)
	var ans int
	var a bool
	var b bool

	for _, r := range s {
		c := string(r)
		if a {
			if b {
				if c == "C" {
					ans++
				}
				a = false
				b = false
			} else if c == "B" {
				b = true
			} else {
				a = false
				b = false
			}
		} else if c == "A" {
			a = true
		} else {
			a = false
		}
	}
	fmt.Println(ans)
}
