package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	if s[0] == 'A' {
		if (s[2] == 'C') == (s[len(s)-2] == 'C') {
			for i, v := range s {
				if i != 0 && i != 2 && i != len(s)-2 {
					if !('a' <= v && 'c' <= v) {
						fmt.Println("WA")
						return
					}
				}
			}
			fmt.Println("AC")
			return
		}
	}
	fmt.Println("WA")
}
