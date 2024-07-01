package main

import (
	"fmt"
)

func sort(s string) string {
	var table [256]int
	for _, c := range s {
		table[c]++
	}
	ret := make([]byte, len(s))
	for c, i := 0, 0; c < 256; c++ {
		for j := 0; j < table[c]; j++ {
			ret[i] = byte(c)
			i++
		}
	}
	return string(ret)
}

func reverse(s string) string {
	ret := make([]byte, len(s))
	for i, c := range s {
		ret[len(s)-i-1] = byte(c)
	}
	return string(ret)
}

func main() {
	var s, t string
	fmt.Scanln(&s)
	fmt.Scanln(&t)
	if sort(s) < reverse(sort(t)) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
