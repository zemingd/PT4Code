package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	rs := []rune(S)
	var r, l []rune
	if len(rs)%2 == 0 {
		l = rs[:len(rs)/2]
		r = rs[len(rs)/2:]
	} else {
		l = rs[:len(rs)/2]
		r = rs[len(rs)/2+1:]
	}
	rev(r)
	cnt := 0
	for i := 0; i < len(r); i++ {
		if string(l[i]) != string(r[i]) {
			cnt++
		}
	}
	fmt.Println(cnt)
}

func rev(runes []rune) []rune {
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return runes
}
