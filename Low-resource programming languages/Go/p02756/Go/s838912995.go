package main

import (
	"fmt"
)

func main() {
	var S, fw, lw string
	fmt.Scan(&S)
	var Q, c1 int
	fmt.Scan(&Q)
	w := S
	for i := 0; i < Q; i++ {
		var t, f int
		var c string
		fmt.Scan(&t)
		if t == 2 {
			fmt.Scan(&f, &c)
			if f == 1 {
				if c1%2 == 0 {
					fw += c
				} else {
					lw += c
				}
			} else {
				if c1%2 == 0 {
					lw += c
				} else {
					fw += c
				}
			}
		} else {
			c1++
		}
	}
	var r string
	if len(fw) > 0 {
		r = Reverse(fw) + w 
	}
	if len(lw) > 0 {
		r += lw	
	}
	if c1%2 == 1 {
		r = Reverse(r)
	}
	fmt.Println(r)
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
