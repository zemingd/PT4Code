package main

import (
	"fmt"
	"strings"
)

func main() {
	var s1, t1 string
	s := make([]string, 200000)
	t := make([]string, 200000)
	_, _ = fmt.Scan(&s1, &t1)
	s1 = strings.ToLower(s1)
	t1 = strings.ToLower(t1)

	s = strings.Split(s1, "")
	t = strings.Split(t1, "")

	a := 0
	for i:=0; i<len(s); i++ {
		if s[i]!=t[i] {
			a++
		}
	}

	println(a)
}