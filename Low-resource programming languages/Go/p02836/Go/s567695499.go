package main

import (
	"fmt"
)

func reverse(s string) string {
	ans := ""
	for i, _ := range s {
		ans += string(s[len(s)-i-1])
	}
	return string(ans)
}

func main() {
	var w string
	fmt.Scan(&w)

	length := len(w)
	var half int
	if length%2 == 0 {
		half = length / 2
	} else {
		half = (length / 2) + 1
	}
	h1 := w[:(length / 2)]
	h2 := w[half:]
	rh2 := reverse(h2)
	var count int
	for i := 0; i < len(h1); i++ {
		if h1[i] != rh2[i] {
			count++
		}
	}
	fmt.Println(count)
}
