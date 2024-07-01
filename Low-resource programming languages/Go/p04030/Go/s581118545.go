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

		if s == "B" {
			t := []string{}
			for x, rr := range r {
				if x < len(r)-1 {
					t = append(t, rr)
				}
			}

			r = []string{}
			for _, tt := range t {
				r = append(r, tt)
			}
			continue
		}

		r = append(r, s)
	}

	result := ""
	for _, rr := range r {
		result += rr
	}
	fmt.Print(result)
}
