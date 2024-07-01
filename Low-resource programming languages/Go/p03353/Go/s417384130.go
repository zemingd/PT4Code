package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s)
	fmt.Scan(&k)

	master := strings.Split(s, "")
	m := make(map[string]bool)
	uniq := []string{}
	for _, element := range master {
		if !m[element] {
			m[element] = true
			uniq = append(uniq, element)
		}
	}

	pattern := []string{}
	last := ""
	for _, seed := range uniq {
		pattern = append(pattern, fmt.Sprintf("%s%s", last, seed))
	}

	fmt.Println(pattern[k])
}
