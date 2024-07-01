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
		if i == 0 {
			r = append(r, s)
			continue
		}

		if "B" == s {
			r = r[:len(r)]
		} else {
			r = append(r, s)
		}
	}

	result := ""
	for _, rr := range r {
		result += rr
	}
	fmt.Print(result)
}
