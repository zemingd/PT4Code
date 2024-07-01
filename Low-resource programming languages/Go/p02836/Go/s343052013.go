package main

import (
	"fmt"
)

func main() {
	var s []byte
	fmt.Scan(&s)
	var cnt int
	for i := range s {
		l := i
		r := len(s) - 1 - i
		if l > r {
			break
		}
		if s[l] != s[r] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
