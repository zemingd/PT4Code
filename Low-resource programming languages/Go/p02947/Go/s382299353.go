package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	s := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&s[i])
		str := strings.Split(s[i], "")
		sort.Strings(str)
		s[i] = strings.Join(str, "")
	}
	c := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if s[i] == s[j] {
				c++
			}
		}
	}
	fmt.Println(c)
}
