package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)

	cs := []rune(s)

	var cnt int
	if len(cs) == 1 {
		cnt = 1
	} else {
		var pre rune
		for _, c := range cs {
			if pre != c {
				cnt++
			}
			pre = c
		}
	}

	fmt.Print(cnt)
}
