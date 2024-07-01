package main

import (
	"fmt"
	"strconv"
	"strings"
)

var (
	n, c int
	max  = 9
	set  = []string{"7", "5", "3"}
)

func search(s string) {
	i, _ := strconv.Atoi(s)
	skip := i > n
	for _, r := range set {
		skip = skip || !strings.Contains(s, r)
		if len(s) < max {
			search(s + r)
		}
	}
	if !skip {
		c++
	}
}

func main() {
	fmt.Scan(&n)
	search("")
	fmt.Println(c)
}