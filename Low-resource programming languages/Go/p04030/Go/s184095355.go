package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	ss := strings.Split(s, "")

	r := []string{}
	for i, s := range ss {
		if "B" == s {
			r[i-1] = ""
		}
		r = append(r, s)
	}

	strings.Join(r, "")
	fmt.Print(r)
}
