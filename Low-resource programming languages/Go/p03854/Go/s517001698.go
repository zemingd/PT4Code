package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scanln(&s)
	r := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	words := [][]rune{[]rune("maerd"), []rune("remaerd"), []rune("esare"), []rune("resare")}
	for {
		if len(r) == 0 {
			fmt.Println("YES")
			return
		}
		fail := 0
		for _, w := range words {
			if strings.HasPrefix(r, w) {
				r = r[len(w):]
				break
			} else {
				fail++
			}
		}
		if fail == len(words) {
			fmt.Println("NO")
			return
		}
	}
}
