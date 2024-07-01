package main

import (
	"fmt"
)

func sort(r []rune) {
	for i := 0; i < len(r); i++ {
		for j := len(r) - 1; j >= i+1; j-- {
			if r[j-1] > r[j] {
				r[j-1], r[j] = r[j], r[j-1]
			}
		}
	}
}

func rsort(r []rune) {
	for i := 0; i < len(r); i++ {
		for j := len(r) - 1; j >= i+1; j-- {
			if r[j-1] < r[j] {
				r[j-1], r[j] = r[j], r[j-1]
			}
		}
	}
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	sr := []rune(s)
	tr := []rune(t)

	sort(sr)
	rsort(tr)

	if string(sr) < string(tr) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
