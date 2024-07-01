package main

import (
	"fmt"
	"strings"
)

func another(s string) string {
	if s == "0" {
		return "1"
	} else {
		return "0"
	}
}

func main() {
	var s []string

	var tmp string
	fmt.Scan(&tmp)
	s = strings.Split(tmp, "")

	var res int
	for i, v := range s {
		if i == 0 {
			continue
		}
		if v == s[i-1] {
			s[i] = another(v)
			res++
		}
	}

	fmt.Println(res)
}
