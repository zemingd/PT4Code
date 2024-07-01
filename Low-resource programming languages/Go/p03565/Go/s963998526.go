package main

import (
	"fmt"
	"sort"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	patters := make([]string, 0)
	for i := 0; i <= len(s)-len(t); i++ {
		ss := s[0:i] + t + s[i+len(t):]
		patters = append(patters, ss)
	}

	matches := make([]string, 0)
	for _, ss := range patters {
		ok := true
		for i, c := range s {
			if c != '?' && string(c) != string(ss[i]) {
				ok = false
				break
			}
		}
		if ok {
			matches = append(matches, ss)
		}
	}

	if len(matches) == 0 {
		fmt.Println("UNRESTORABLE")
		return
	}

	sort.Strings(matches)
	for _, c := range matches[0] {
		if c == '?' {
			fmt.Print("a")
		} else {
			fmt.Print(string(c))
		}
	}
	fmt.Println("")
}
